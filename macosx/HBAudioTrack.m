/*  HBAudioTrack.m $

 This file is part of the HandBrake source code.
 Homepage: <http://handbrake.fr/>.
 It may be used under the terms of the GNU General Public License. */

#import "HBAudioTrack.h"
#import "HBAudioController.h"
#import "HBJob.h"
#import "HBCodingUtilities.h"
#import "hb.h"

NSString *keyAudioTrackIndex = @"keyAudioTrackIndex";
NSString *keyAudioTrackName = @"keyAudioTrackName";
NSString *keyAudioInputBitrate = @"keyAudioInputBitrate";
NSString *keyAudioInputSampleRate = @"keyAudioInputSampleRate";
NSString *keyAudioInputCodec = @"keyAudioInputCodec";
NSString *keyAudioInputCodecParam = @"keyAudioInputCodecParam";
NSString *keyAudioInputChannelLayout = @"keyAudioInputChannelLayout";
NSString *keyAudioTrackLanguageIsoCode = @"keyAudioTrackLanguageIsoCode";

#define DEFAULT_SAMPLERATE 48000

@interface HBAudioTrack ()
@property (nonatomic, readwrite) BOOL validating;
@end

@implementation HBAudioTrack

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        // Defaults settings
        _encoder = HB_ACODEC_CA_AAC;
        _container = HB_MUX_MKV;
        _sampleRate = 0;
        _bitRate = 160;
        _mixdown = HB_AMIXDOWN_DOLBYPLII;
    }
    return self;
}

- (instancetype)initWithTrackIdx:(NSUInteger)index
                       container:(int)container
                      dataSource:(id<HBAudioTrackDataSource>)dataSource
                        delegate:(id<HBAudioTrackDelegate>)delegate;
{
    self = [super init];
    if (self)
    {
        _dataSource = dataSource;
        _sourceTrackIdx = index;
        _container = container;

        [self validateSettings];

        _delegate = delegate;
    }

    return self;
}

- (void)validateSettings
{
    if (_sourceTrackIdx)
    {
        if (self.encoder == 0)
        {
            self.encoder = HB_ACODEC_CA_AAC;
            self.bitRate = 160;
        }
        else
        {
            self.encoder = [self sanatizeEncoderValue:self.encoder];
        }
    }
    else
    {
        self.encoder = 0;
        self.mixdown = 0;
        self.sampleRate = 0;
        self.bitRate = -1;
    }
}

#pragma mark - Track properties

- (void)setSourceTrackIdx:(NSUInteger)sourceTrackIdx
{
    if (sourceTrackIdx != _sourceTrackIdx)
    {
        [[self.undo prepareWithInvocationTarget:self] setSourceTrackIdx:_sourceTrackIdx];
    }

    NSUInteger oldIdx = _sourceTrackIdx;
    _sourceTrackIdx = sourceTrackIdx;

    if (!(self.undo.isUndoing || self.undo.isRedoing))
    {
        [self validateSettings];

        if (oldIdx != sourceTrackIdx)
        {
            [self.delegate track:self didChangeSourceFrom:oldIdx];
        }
    }
}

- (void)setContainer:(int)container
{
    if (container != _container)
    {
        [[self.undo prepareWithInvocationTarget:self] setContainer:_container];
    }
    _container = container;

    if (!(self.undo.isUndoing || self.undo.isRedoing))
    {
        if (self.encoder)
        {
            self.encoder = [self sanatizeEncoderValue:self.encoder];
        }
    }
}

- (void)setEncoder:(int)encoder
{
    if (encoder != _encoder)
    {
        [[self.undo prepareWithInvocationTarget:self] setEncoder:_encoder];
    }
    _encoder = encoder;

    if (!(self.undo.isUndoing || self.undo.isRedoing) && !self.validating)
    {
        self.validating = YES;
        [self.delegate encoderChanged];
        self.mixdown = [self sanatizeMixdownValue:self.mixdown];
        self.sampleRate = [self sanatizeSamplerateValue:self.sampleRate];
        self.bitRate = [self sanatizeBitrateValue:self.bitRate];
        self.validating = NO;
    }
}

- (void)setMixdown:(int)mixdown
{
    if (mixdown != _mixdown)
    {
        [[self.undo prepareWithInvocationTarget:self] setMixdown:_mixdown];
    }
    _mixdown = mixdown;

    if (!(self.undo.isUndoing || self.undo.isRedoing) && !self.validating)
    {
        self.validating = YES;
        self.bitRate = [self sanatizeBitrateValue:self.bitRate];
        self.validating = NO;
    }
}

- (void)setSampleRate:(int)sampleRate
{
    if (sampleRate != _sampleRate)
    {
        [[self.undo prepareWithInvocationTarget:self] setSampleRate:_sampleRate];
    }
    _sampleRate = sampleRate;

    if (!(self.undo.isUndoing || self.undo.isRedoing) && !self.validating)
    {
        self.validating = YES;
        self.bitRate = [self sanatizeBitrateValue:self.bitRate];
        self.validating = NO;
    }
}

- (void)setBitRate:(int)bitRate
{
    if (bitRate != _bitRate)
    {
        [[self.undo prepareWithInvocationTarget:self] setBitRate:_bitRate];
    }
    _bitRate = bitRate;
}

- (void)setGain:(double)gain
{
    if (gain != _gain)
    {
        [[self.undo prepareWithInvocationTarget:self] setGain:_gain];
    }
    _gain = gain;
}

// Because we have indicated that the binding for the gain validates immediately we can implement the
// key value binding method to ensure the gain stays in our accepted range.
- (BOOL)validateGain:(id *)ioValue error:(NSError * __autoreleasing *)outError
{
    BOOL retval = YES;

    if (nil != *ioValue)
    {
        if ([*ioValue intValue] < -20)
        {
            *ioValue = @(-20);
        }
        else if ([*ioValue intValue] > 20)
        {
            *ioValue = @20;
        }
    }

    return retval;
}

- (void)setDrc:(double)drc
{
    if (drc != _drc)
    {
        [[self.undo prepareWithInvocationTarget:self] setDrc:_drc];
    }
    _drc = drc;
}

#pragma mark - Validation

- (int)sanatizeEncoderValue:(int)proposedEncoder
{
    if (proposedEncoder)
    {
        NSDictionary *sourceTrack = [_dataSource sourceTrackAtIndex:_sourceTrackIdx];
        int inputCodec = [sourceTrack[keyAudioInputCodec] intValue];

        hb_encoder_t *proposedEncoderInfo = hb_audio_encoder_get_from_codec(proposedEncoder);

        if (proposedEncoderInfo && proposedEncoderInfo->muxers & self.container)
        {
            // If the codec is passthru, see if the new source supports it.
            if (proposedEncoderInfo->codec & HB_ACODEC_PASS_FLAG)
            {
                if ((proposedEncoderInfo->codec & inputCodec & HB_ACODEC_PASS_MASK))
                {
                    return proposedEncoder;
                }
            }
            else
            {
                return proposedEncoder;
            }
        }

        return HB_ACODEC_CA_AAC;
    }
    else
    {
        return proposedEncoder;
    }
}

- (int)sanatizeMixdownValue:(int)proposedMixdown
{
    NSDictionary *sourceTrack = [_dataSource sourceTrackAtIndex:_sourceTrackIdx];
    unsigned long long channelLayout = [sourceTrack[keyAudioInputChannelLayout] unsignedLongLongValue];

    if (!hb_mixdown_is_supported(proposedMixdown, self.encoder, channelLayout))
    {
        return hb_mixdown_get_default(self.encoder, channelLayout);
    }
    return proposedMixdown;
}

- (int)sanatizeSamplerateValue:(int)proposedSamplerate
{
    if (self.encoder & HB_ACODEC_PASS_FLAG)
    {
        return 0; // Auto (same as source)
    }
    else if (proposedSamplerate)
    {
        return hb_audio_samplerate_find_closest(proposedSamplerate, self.encoder);
    }
    return proposedSamplerate;
}

- (int)sanatizeBitrateValue:(int)proposedBitrate
{
    if (self.encoder & HB_ACODEC_PASS_FLAG)
    {
        return -1;
    }
    else if (proposedBitrate == -1) // switching from passthru
    {
        return hb_audio_bitrate_get_default(self.encoder,
                                            self.sampleRate ? self.sampleRate : DEFAULT_SAMPLERATE,
                                            self.mixdown);
    }
    else
    {
        return hb_audio_bitrate_get_best(self.encoder, proposedBitrate, self.sampleRate, self.mixdown);
    }
}

#pragma mark - Options

- (NSArray<NSString *> *)encoders
{
    NSMutableArray<NSString *> *encoders = [[NSMutableArray alloc] init];

    NSDictionary *sourceTrack = [_dataSource sourceTrackAtIndex:_sourceTrackIdx];
    int inputCodec = [sourceTrack[keyAudioInputCodec] intValue];

    for (const hb_encoder_t *audio_encoder = hb_audio_encoder_get_next(NULL);
         audio_encoder != NULL;
         audio_encoder  = hb_audio_encoder_get_next(audio_encoder))
    {
        if (audio_encoder->muxers & self.container)
        {
            if (audio_encoder->codec & HB_ACODEC_PASS_FLAG)
            {
                // If the codec is passthru, show only the supported ones.
                if ((audio_encoder->codec & inputCodec & HB_ACODEC_PASS_MASK))
                {
                    [encoders addObject:@(audio_encoder->name)];
                }
            }
            else
            {
                [encoders addObject:@(audio_encoder->name)];
            }
        }
    }
    return encoders;
}

- (NSArray<NSString *> *)mixdowns
{
    NSMutableArray<NSString *> *mixdowns = [[NSMutableArray alloc] init];

    NSDictionary *sourceTrack = [_dataSource sourceTrackAtIndex:_sourceTrackIdx];
    unsigned long long channelLayout = [sourceTrack[keyAudioInputChannelLayout] unsignedLongLongValue];

    for (const hb_mixdown_t *mixdown = hb_mixdown_get_next(NULL);
         mixdown != NULL;
         mixdown  = hb_mixdown_get_next(mixdown))
    {
        if (hb_mixdown_is_supported(mixdown->amixdown, self.encoder, channelLayout))
        {
            [mixdowns addObject:@(mixdown->name)];
        }
    }
    return mixdowns;
}

- (NSArray<NSString *> *)sampleRates
{
    NSMutableArray<NSString *> *sampleRates = [[NSMutableArray alloc] init];
    [sampleRates addObject:@"Auto"];

    for (const hb_rate_t *audio_samplerate = hb_audio_samplerate_get_next(NULL);
         audio_samplerate != NULL;
         audio_samplerate  = hb_audio_samplerate_get_next(audio_samplerate))
    {
        int rate = audio_samplerate->rate;
        if (rate == hb_audio_samplerate_find_closest(rate, self.encoder))
        {
            [sampleRates addObject:@(audio_samplerate->name)];
        }
    }
    return sampleRates;
}

- (NSArray<NSString *> *)bitRates
{
    int minBitRate = 0;
    int maxBitRate = 0;

    hb_audio_bitrate_get_limits(self.encoder, self.sampleRate, self.mixdown, &minBitRate, &maxBitRate);

    NSMutableArray<NSString *> *bitRates = [[NSMutableArray alloc] init];
    for (const hb_rate_t *audio_bitrate = hb_audio_bitrate_get_next(NULL);
         audio_bitrate != NULL;
         audio_bitrate  = hb_audio_bitrate_get_next(audio_bitrate))
    {
        if (audio_bitrate->rate >= minBitRate && audio_bitrate->rate <= maxBitRate)
        {
            [bitRates addObject:@(audio_bitrate->name)];
        }
    }
    return bitRates;
}

#pragma mark - KVO UI Additions

- (NSArray *)sourceTracksArray
{
    return [self.dataSource sourceTracksArray];
}

- (BOOL)isEnabled
{
    return self.sourceTrackIdx != 0;
}

- (BOOL)mixdownEnabled
{
    BOOL retval = self.isEnabled;

    if (retval && self.mixdown == HB_AMIXDOWN_NONE)
    {
        // "None" mixdown (passthru)
        retval = NO;
    }

    return retval;
}

- (BOOL)bitrateEnabled
{
    BOOL retval = self.isEnabled;

    if (retval)
    {
        int myCodecDefaultBitrate = hb_audio_bitrate_get_default(self.encoder, 0, 0);
        if (myCodecDefaultBitrate < 0)
        {
            retval = NO;
        }
    }
    return retval;
}

- (BOOL)drcEnabled
{
    BOOL retval = self.isEnabled;

    if (retval)
    {
        NSDictionary *sourceTrack = [_dataSource sourceTrackAtIndex:_sourceTrackIdx];

        int inputCodec = [sourceTrack[keyAudioInputCodec] intValue];
        int inputCodecParam = [sourceTrack[keyAudioInputCodecParam] intValue];
        if (!hb_audio_can_apply_drc(inputCodec, inputCodecParam, self.encoder))
        {
            retval = NO;
        }
    }
    return retval;
}

- (BOOL)passThruDisabled
{
    BOOL retval = YES;

    if (self.encoder & HB_ACODEC_PASS_FLAG)
    {
        retval = NO;
    }

    return retval;
}

#pragma mark - KVO

+ (NSSet *)keyPathsForValuesAffectingValueForKey:(NSString *)key
{
    NSSet *retval = nil;

    if ([key isEqualToString:@"bitrateEnabled"] ||
        [key isEqualToString:@"passThruDisabled"] ||
        [key isEqualToString:@"mixdownEnabled"])
    {
        retval = [NSSet setWithObjects:@"encoder", nil];
    }
    else if ([key isEqualToString:@"mixdowns"] ||
             [key isEqualToString:@"drcEnabled"])
    {
        retval = [NSSet setWithObjects:@"sourceTrackIdx", @"encoder", nil];
    }
    else if ([key isEqualToString:@"sampleRates"])
    {
        retval = [NSSet setWithObjects:@"encoder", @"mixdown", nil];
    }
    else if ([key isEqualToString:@"bitRates"])
    {
        retval = [NSSet setWithObjects:@"encoder", @"mixdown", @"sampleRate", nil];
    }
    else if ([key isEqualToString:@"encoders"])
    {
        retval = [NSSet setWithObjects:@"container", @"sourceTrackIdx", nil];
    }
    else
    {
        retval = [NSSet set];
    }

    return retval;
}

- (void)setNilValueForKey:(NSString *)key
{
    if ([key isEqualToString:@"drc"] || [key isEqualToString:@"gain"])
    {
        [self setValue:@0 forKey:key];
    }
}

#pragma mark - NSCopying

- (instancetype)copyWithZone:(NSZone *)zone
{
    HBAudioTrack *copy = [[[self class] alloc] init];

    if (copy)
    {
        copy->_sourceTrackIdx = _sourceTrackIdx;
        copy->_container = _container;

        copy->_encoder = _encoder;
        copy->_mixdown = _mixdown;
        copy->_sampleRate = _sampleRate;
        copy->_bitRate = _bitRate;

        copy->_gain = _gain;
        copy->_drc = _drc;
    }

    return copy;
}

#pragma mark - NSCoding

+ (BOOL)supportsSecureCoding
{
    return YES;
}

- (void)encodeWithCoder:(NSCoder *)coder
{
    [coder encodeInt:3 forKey:@"HBAudioTrackVersion"];

    encodeInteger(_sourceTrackIdx);
    encodeInt(_container);

    encodeInt(_encoder);
    encodeInt(_mixdown);
    encodeInt(_sampleRate);
    encodeInt(_bitRate);

    encodeDouble(_gain);
    encodeDouble(_drc);
}

- (instancetype)initWithCoder:(NSCoder *)decoder
{
    self = [super init];

    decodeInteger(_sourceTrackIdx);
    decodeInt(_container);

    decodeInt(_encoder);
    decodeInt(_mixdown);
    decodeInt(_sampleRate);
    decodeInt(_bitRate);

    decodeDouble(_gain);
    decodeDouble(_drc);

    return self;
}

@end
