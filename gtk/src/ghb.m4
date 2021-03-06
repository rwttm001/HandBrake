changequote(`[', `]')dnl
define([filter_output],
        [ifelse(eval(gtk_version <= 312), 1,
            [patsubst([patsubst([$1], [margin-start], [margin-left])],
                      [margin-end], [margin-right])],
            [$1])])dnl
filter_output([
<?xml version="1.0" encoding="UTF-8"?>
<!-- Generated with glade 3.16.0 on Tue Jan 14 14:36:08 2014 -->
<interface>
  <!-- interface-requires gtk+ 3.0 -->
  <object class="GtkFileFilter" id="SourceFilterAVI"/>
  <object class="GtkFileFilter" id="SourceFilterAll"/>
  <object class="GtkFileFilter" id="SourceFilterEVO"/>
  <object class="GtkFileFilter" id="SourceFilterFLV"/>
  <object class="GtkFileFilter" id="SourceFilterMKV"/>
  <object class="GtkFileFilter" id="SourceFilterMOV"/>
  <object class="GtkFileFilter" id="SourceFilterMP4"/>
  <object class="GtkFileFilter" id="SourceFilterMPG"/>
  <object class="GtkFileFilter" id="SourceFilterOGG"/>
  <object class="GtkFileFilter" id="SourceFilterTS"/>
  <object class="GtkFileFilter" id="SourceFilterVOB"/>
  <object class="GtkFileFilter" id="SourceFilterVideo"/>
  <object class="GtkFileFilter" id="SourceFilterWMV"/>
  <object class="GtkFileFilter" id="QueueFilterAll"/>
  <object class="GtkFileFilter" id="QueueFilterJSON"/>
  <object class="GtkLabel" id="SubBurnedLabel">
    <property name="visible">True</property>
    <property name="can_focus">False</property>
    <property name="tooltip_text" translatable="yes">Render the subtitle over the video.

The subtitle will be part of the video and can not be disabled.</property>
    <property name="label" translatable="yes">&lt;b&gt;Burned In&lt;/b&gt;</property>
    <property name="use_markup">True</property>
  </object>
  <object class="GtkLabel" id="SubDefaultLabel">
    <property name="visible">True</property>
    <property name="can_focus">False</property>
    <property name="tooltip_text" translatable="yes">Set the default output subtitle track.

Most players will automatically display this
subtitle track whenever the video is played.

This is useful for creating a "forced" track
in your output.</property>
    <property name="label" translatable="yes">&lt;b&gt;Default&lt;/b&gt;</property>
    <property name="use_markup">True</property>
  </object>
  <object class="GtkLabel" id="SubForcedLabel">
    <property name="visible">True</property>
    <property name="can_focus">False</property>
    <property name="tooltip_text" translatable="yes">Use only subtitles that have been flagged
as forced in the source subtitle track

"Forced" subtitles are usually used to show
subtitles during scenes where someone is speaking
a foreign language.</property>
    <property name="label" translatable="yes">&lt;b&gt;Forced Only&lt;/b&gt;</property>
    <property name="use_markup">True</property>
  </object>
  <object class="GtkLabel" id="SubSRTOffsetLabel">
    <property name="visible">True</property>
    <property name="can_focus">False</property>
    <property name="tooltip_text" translatable="yes">Add (or subtract) an offset (in milliseconds)
to the start of the SRT subtitle track.

Often, the start of an external SRT file
does not coincide with the start of the video.
This setting allows you to synchronize the files.</property>
    <property name="label" translatable="yes">&lt;b&gt;SRT Offset&lt;/b&gt;</property>
    <property name="use_markup">True</property>
  </object>
  <object class="GtkLabel" id="SubTrackLabel">
    <property name="visible">True</property>
    <property name="can_focus">False</property>
    <property name="tooltip_text" translatable="yes">The source subtitle track

You can choose any of the subtitles
recognized in your source file.

In addition, there is a special track option
"Foreign Audio Search".  This option will add
an extra pass to the encode that searches for
subtitles that may correspond to a foreign
language scene.  This option is best used in
conjunction with the "Forced" option.</property>
    <property name="label" translatable="yes">&lt;b&gt;Track&lt;/b&gt;</property>
    <property name="use_markup">True</property>
  </object>
  <object class="GtkWindow" id="activity_window">
    <property name="can_focus">False</property>
    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
    <property name="default_width">800</property>
    <property name="default_height">600</property>
    <property name="type_hint">utility</property>
    <property name="skip_taskbar_hint">True</property>
    <property name="skip_pager_hint">True</property>
    <property name="transient_for">hb_window</property>
    <signal name="delete-event" handler="activity_window_delete_cb" swapped="no"/>
    <child>
      <object class="GtkBox" id="vbox37">
        <property name="orientation">vertical</property>
        <property name="visible">True</property>
        <property name="can_focus">False</property>
        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
        <child>
          <placeholder/>
        </child>
        <child>
          <object class="GtkLabel" id="activity_location">
            <property name="visible">True</property>
            <property name="can_focus">False</property>
          </object>
          <packing>
            <property name="expand">False</property>
            <property name="fill">True</property>
            <property name="padding">5</property>
            <property name="position">1</property>
          </packing>
        </child>
        <child>
          <object class="GtkScrolledWindow" id="activity_scroll">
            <property name="visible">True</property>
            <property name="can_focus">True</property>
            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
            <property name="shadow_type">in</property>
            <child>
              <object class="GtkTextView" id="activity_view">
                <property name="width_request">600</property>
                <property name="height_request">600</property>
                <property name="visible">True</property>
                <property name="can_focus">True</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <property name="editable">False</property>
                <property name="wrap_mode">char</property>
                <property name="cursor_visible">False</property>
              </object>
            </child>
          </object>
          <packing>
            <property name="expand">True</property>
            <property name="fill">True</property>
            <property name="position">2</property>
          </packing>
        </child>
        <child>
          <placeholder/>
        </child>
      </object>
    </child>
  </object>
  <object class="GtkAdjustment" id="adjustment1">
    <property name="lower">1</property>
    <property name="upper">100</property>
    <property name="value">1</property>
    <property name="step_increment">1</property>
    <property name="page_increment">1</property>
  </object>
  <object class="GtkAdjustment" id="adjustment10">
    <property name="lower">4</property>
    <property name="upper">64</property>
    <property name="value">16</property>
    <property name="step_increment">1</property>
    <property name="page_increment">10</property>
  </object>
  <object class="GtkAdjustment" id="adjustment11">
    <property name="lower">-6</property>
    <property name="upper">6</property>
    <property name="step_increment">1</property>
    <property name="page_increment">10</property>
  </object>
  <object class="GtkAdjustment" id="adjustment12">
    <property name="lower">-6</property>
    <property name="upper">6</property>
    <property name="step_increment">1</property>
    <property name="page_increment">10</property>
  </object>
  <object class="GtkAdjustment" id="adjustment13">
    <property name="upper">1000</property>
    <property name="step_increment">1</property>
    <property name="page_increment">10</property>
  </object>
  <object class="GtkAdjustment" id="adjustment14">
    <property name="upper">1000</property>
    <property name="step_increment">1</property>
    <property name="page_increment">10</property>
  </object>
  <object class="GtkAdjustment" id="adjustment15">
    <property name="upper">1000</property>
    <property name="step_increment">1</property>
    <property name="page_increment">10</property>
  </object>
  <object class="GtkAdjustment" id="adjustment16">
    <property name="upper">1000</property>
    <property name="step_increment">1</property>
    <property name="page_increment">10</property>
  </object>
  <object class="GtkAdjustment" id="adjustment17">
    <property name="upper">8000</property>
    <property name="step_increment">2</property>
    <property name="page_increment">16</property>
  </object>
  <object class="GtkAdjustment" id="adjustment18">
    <property name="upper">8000</property>
    <property name="step_increment">2</property>
    <property name="page_increment">16</property>
  </object>
  <object class="GtkAdjustment" id="adjustment19">
    <property name="lower">1</property>
    <property name="upper">10</property>
    <property name="value">1</property>
    <property name="step_increment">1</property>
    <property name="page_increment">1</property>
  </object>
  <object class="GtkAdjustment" id="adjustment2">
    <property name="lower">1</property>
    <property name="upper">100</property>
    <property name="value">100</property>
    <property name="step_increment">1</property>
    <property name="page_increment">1</property>
  </object>
  <object class="GtkAdjustment" id="adjustment20">
    <property name="lower">4</property>
    <property name="upper">15</property>
    <property name="step_increment">1</property>
    <property name="page_increment">1</property>
  </object>
  <object class="GtkAdjustment" id="adjustment21">
    <property name="lower">15</property>
    <property name="upper">240</property>
    <property name="value">15</property>
    <property name="step_increment">15</property>
    <property name="page_increment">15</property>
  </object>
  <object class="GtkAdjustment" id="adjustment22">
    <property name="upper">2</property>
    <property name="value">1</property>
    <property name="step_increment">0.1</property>
    <property name="page_increment">0.5</property>
  </object>
  <object class="GtkAdjustment" id="adjustment23">
    <property name="upper">1</property>
    <property name="step_increment">0.05</property>
    <property name="page_increment">0.5</property>
  </object>
  <object class="GtkAdjustment" id="adjustment24">
    <property name="lower">1</property>
    <property name="upper">999</property>
    <property name="value">1</property>
    <property name="step_increment">1</property>
    <property name="page_increment">1</property>
  </object>
  <object class="GtkAdjustment" id="adjustment25">
    <property name="upper">4096</property>
    <property name="step_increment">1</property>
    <property name="page_increment">16</property>
  </object>
  <object class="GtkAdjustment" id="adjustment26">
    <property name="upper">4096</property>
    <property name="step_increment">1</property>
    <property name="page_increment">16</property>
  </object>
  <object class="GtkAdjustment" id="adjustment27">
    <property name="lower">1</property>
    <property name="upper">10</property>
    <property name="value">1</property>
    <property name="step_increment">1</property>
    <property name="page_increment">1</property>
  </object>
  <object class="GtkAdjustment" id="adjustment28">
    <property name="lower">0.9</property>
    <property name="upper">4</property>
    <property name="step_increment">0.1</property>
    <property name="page_increment">1</property>
  </object>
  <object class="GtkAdjustment" id="adjustment29">
    <property name="lower">1</property>
    <property name="upper">65535</property>
    <property name="step_increment">1</property>
    <property name="page_increment">16</property>
  </object>
  <object class="GtkAdjustment" id="adjustment3">
    <property name="upper">20000</property>
    <property name="step_increment">10</property>
    <property name="page_increment">100</property>
  </object>
  <object class="GtkAdjustment" id="adjustment30">
    <property name="lower">1</property>
    <property name="upper">65535</property>
    <property name="step_increment">1</property>
    <property name="page_increment">16</property>
  </object>
  <object class="GtkAdjustment" id="adjustment31">
    <property name="lower">-30000</property>
    <property name="upper">30000</property>
    <property name="step_increment">10</property>
    <property name="page_increment">100</property>
  </object>
  <object class="GtkAdjustment" id="adjustment32">
    <property name="upper">8000</property>
    <property name="step_increment">2</property>
    <property name="page_increment">16</property>
  </object>
  <object class="GtkAdjustment" id="adjustment33">
    <property name="upper">8000</property>
    <property name="step_increment">2</property>
    <property name="page_increment">16</property>
  </object>
  <object class="GtkAdjustment" id="adjustment34">
    <property name="upper">2</property>
    <property name="value">1</property>
    <property name="step_increment">0.1</property>
    <property name="page_increment">0.5</property>
  </object>
  <object class="GtkAdjustment" id="adjustment35">
    <property name="lower">-20</property>
    <property name="upper">21</property>
    <property name="step_increment">1</property>
    <property name="page_increment">1</property>
  </object>
  <object class="GtkAdjustment" id="adjustment4">
    <property name="upper">50000</property>
    <property name="step_increment">100</property>
    <property name="page_increment">1000</property>
  </object>
  <object class="GtkAdjustment" id="adjustment5">
    <property name="upper">51</property>
    <property name="value">20.25</property>
    <property name="step_increment">0.25</property>
    <property name="page_increment">5</property>
  </object>
  <object class="GtkAdjustment" id="adjustment8">
    <property name="lower">1</property>
    <property name="upper">16</property>
    <property name="value">3</property>
    <property name="step_increment">1</property>
    <property name="page_increment">1</property>
  </object>
  <object class="GtkAdjustment" id="adjustment9">
    <property name="upper">16</property>
    <property name="step_increment">1</property>
    <property name="page_increment">1</property>
  </object>
  <object class="GtkAdjustment" id="audio_quality_adj">
    <property name="upper">10</property>
    <property name="step_increment">0.1</property>
    <property name="page_increment">1</property>
  </object>
  <object class="GtkAboutDialog" id="hb_about">
    <property name="transient_for">hb_window</property>
    <property name="can_focus">False</property>
    <property name="border_width">5</property>
    <property name="title" translatable="yes">About HandBrake</property>
    <property name="type_hint">dialog</property>
    <property name="skip_taskbar_hint">True</property>
    <property name="skip_pager_hint">True</property>
    <property name="program_name">HandBrake</property>
    <property name="version">0.9.2</property>
    <property name="copyright" translatable="yes">Copyright © 2008 - 2016 John Stebbins
Copyright © 2004 - 2016, HandBrake Devs</property>
    <property name="comments" translatable="yes">HandBrake is a GPL-licensed, multiplatform, multithreaded video transcoder.</property>
    <property name="website">http://handbrake.fr</property>
    <property name="website_label" translatable="yes">http://handbrake.fr</property>
    <property name="license" translatable="yes">HandBrake is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

HandBrake is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with Glade; if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.</property>
    <property name="authors">ghb author:
  John Stebbins

HandBrake authors:
  Eric Petit
  Laurent Aimar
  John Allen
  Joe Crain
  Damiano Galassi
  Edward Groenendaal
  Rodney Hester
  Andrew Kimpton
  Chris Lee
  Chris Long
  Brian Mario
  Maurj
  Mirkwood
  Nyx
  Philippe Rigaux
  Jonathon Rubin
  Scott
  Chris Thoman
  Mark Krenek
  Van Jacobson

libavcodec authors:
  Fabrice Bellard
  Alex Beregszaszi
  Brian Foley
  Arpad Gereoffy
  Philip Gladstone
  Falk Hueffner
  Zdenek Kabelac
  Nick Kurshev
  Michael Niedermayer
  François Revol
  Dieter Shirley
  Juan J. Sierralta
  Lionel Ulmer

libdts authors:
  Gildas Bazin
  Sam Hocevar

libdvdcss authors:
  Billy Biggs
  Stéphane Borel
  Håkan Hjort
  Samuel Hocevar
  Eugenio Jarosiewicz
  Jon Lech Johansen
  Markus Kuespert
  Pascal Levesque
  Steven M. Schultz
  David Siebörger
  Alex Strelnikov
  German Tischler
  Gildas Bazin

libdvdread authors:
  Björn Englund
  Håkan Hjort
  Billy Biggs
  Christian Wolff

libfaac authors:
  M. Bakker
  Tony Lenox
  RageOMatic
  thebard
  Ivan Dimkovic
  Krzysztof Nikiel

libmp3lame authors:
  Mike Cheng
  Robert Hegemann
  Frank Klemm
  Alexander Leidinger
  Naoki Shibata
  Mark Taylor
  Takehiro Tominiga
  Iván Cavero Belaunde
  Gabriel Bouvigne
  Florian Bomers
  CISC
  John Dahlstrom
  John Dee
  Albert Faber
  Peter Gubanov
  Lars Magne Ingebrigtsen
  Yosi Markovich
  Zdenek Kabelac
  Iwasa Kazmi
  Guillaume Lessard
  Steve Lhomme
  Don Melton
  Viral Shah
  Acy Stapp
  Roel VdB

libmp4v2 authors:
  Dave Mackie
  Alix Marchandise-Franquet
  Bill May
  Massimo Villari
  Waqar Mohsin
  Richard Chen
  Rob Arnold
  Howdy Pierce
  Steven Schultz
  sergent@io.com
  Sean Gilligan
  Michael Rossberg
  Luis F. Ramirez
  Petter Reinholdtsen

libmpeg2 authors:
  Aaron Holtzman
  Michel Lespinasse
  Bruno Barreyra
  Gildas Bazin
  Alexander W. Chin
  Stephen Crowley
  Didier Gautheron
  Ryan C. Gordon
  Peter Gubanov
  Håkan Hjort
  Nicolas Joly
  Gerd Knorr
  David I. Lehn
  Olie Lho
  Rick Niles
  Real Ouellet
  Bajusz Peter
  Franck Sicard
  Brion Vibber
  Martin Vogt
  Fredrik Vraalsen

libogg authors:
  Christopher Montgomery

libsamplerate authors:
  Erik de Castro Lopo

libvorbis authors:
  Christopher Montgomery

libx264 authors:
  Laurent Aimar

</property>
    <property name="logo_icon_name">hb-icon</property>
    <property name="wrap_license">True</property>
    <signal name="delete-event" handler="gtk_widget_hide_on_delete" swapped="no"/>
    <signal name="response" handler="hb_about_response_cb" swapped="no"/>
    <child internal-child="vbox">
      <object class="GtkBox" id="dialog-vbox4">
        <property name="visible">True</property>
        <property name="can_focus">False</property>
        <property name="spacing">2</property>
        <child internal-child="action_area">
          <object class="GtkButtonBox" id="dialog-action_area4">
            <property name="visible">True</property>
            <property name="can_focus">False</property>
            <property name="layout_style">end</property>
          </object>
          <packing>
            <property name="expand">False</property>
            <property name="fill">True</property>
            <property name="pack_type">end</property>
            <property name="position">0</property>
          </packing>
        </child>
        <child>
          <placeholder/>
        </child>
      </object>
    </child>
  </object>

  <object class="GtkMenu" id="tray_menu">
    <property name="visible">True</property>
    <property name="can_focus">False</property>
    <child>
      <object class="GtkMenuItem" id="show_hide">
        <property name="label" translatable="yes">_Minimize/Maximize</property>
        <property name="visible">True</property>
        <property name="can_focus">False</property>
        <property name="use_underline">True</property>
        <signal name="activate" handler="show_hide_toggle_cb" swapped="no"/>
      </object>
      <object class="GtkMenuItem" id="tray_queue_pause">
        <property name="label" translatable="yes">_Pause Encoding</property>
        <property name="visible">True</property>
        <property name="can_focus">False</property>
        <property name="use_underline">True</property>
        <signal name="activate" handler="queue_pause_clicked_cb" swapped="no"/>
      </object>
      <object class="GtkMenuItem" id="tray_quit">
        <property name="label" translatable="yes">_Quit</property>
        <property name="visible">True</property>
        <property name="can_focus">False</property>
        <property name="use_underline">True</property>
        <signal name="activate" handler="on_quit1_activate" swapped="no"/>
      </object>
      <object class="GtkMenuItem" id="tray_about">
        <property name="label" translatable="yes">_About</property>
        <property name="visible">True</property>
        <property name="can_focus">False</property>
        <property name="use_underline">True</property>
        <signal name="activate" handler="about_activate_cb" swapped="no"/>
      </object>
    </child>
  </object>

  <object class="GtkWindow" id="hb_window">
    <property name="can_focus">False</property>
    <property name="events">GDK_VISIBILITY_NOTIFY_MASK</property>
    <property name="title" translatable="yes">HandBrake</property>
    <property name="default_width">500</property>
    <property name="default_height">400</property>
    <property name="icon_name">hb-icon</property>
    <signal name="configure-event" handler="window_configure_cb" swapped="no"/>
    <signal name="delete-event" handler="window_delete_event_cb" swapped="no"/>
    <signal name="destroy-event" handler="window_destroy_event_cb" swapped="no"/>
    <signal name="visibility-notify-event" handler="hb_visibility_event_cb" swapped="no"/>
    <child>
      <object class="GtkBox" id="vbox48">
        <property name="orientation">vertical</property>
        <property name="visible">True</property>
        <property name="can_focus">False</property>
        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
        <child>
          <object class="GtkMenuBar" id="main_menu">
            <property name="visible">True</property>
            <property name="can_focus">False</property>
            <child>
              <object class="GtkMenuItem" id="file_menu">
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="label" translatable="yes">_File</property>
                <property name="use_underline">True</property>
                <child type="submenu">
                  <object class="GtkMenu" id="file_submenu">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <child>
                      <object class="GtkMenuItem" id="source_open">
                        <property name="label" translatable="yes">Open _Source</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="use_underline">True</property>
                        <signal name="activate" handler="source_button_clicked_cb" swapped="no"/>
                      </object>
                    </child>
                    <child>
                      <object class="GtkMenuItem" id="source_title_open">
                        <property name="label" translatable="yes">Open Single _Title</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="use_underline">True</property>
                        <signal name="activate" handler="single_title_source_cb" swapped="no"/>
                      </object>
                    </child>
                    <child>
                      <object class="GtkMenuItem" id="destination_menu_item">
                        <property name="label" translatable="yes">Set _Destination</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="use_underline">True</property>
                        <signal name="activate" handler="destination_browse_clicked_cb" swapped="no"/>
                      </object>
                    </child>
                    <child>
                      <object class="GtkSeparatorMenuItem" id="separatormenuitem1">
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                      </object>
                    </child>
                    <child>
                      <object class="GtkMenuItem" id="preferences">
                        <property name="label" translatable="yes">_Preferences</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="use_underline">True</property>
                        <signal name="activate" handler="prefs_dialog_cb" swapped="no"/>
                      </object>
                    </child>
                    <child>
                      <object class="GtkSeparatorMenuItem" id="separatormenuitem2">
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                      </object>
                    </child>
                    <child>
                      <object class="GtkMenuItem" id="quit">
                        <property name="label" translatable="yes">_Quit</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="use_underline">True</property>
                        <signal name="activate" handler="on_quit1_activate" swapped="no"/>
                      </object>
                    </child>
                  </object>
                </child>
              </object>
            </child>
            <child>
              <object class="GtkMenuItem" id="queue_menu">
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="label" translatable="yes">_Queue</property>
                <property name="use_underline">True</property>
                <child type="submenu">
                  <object class="GtkMenu" id="queue_submenu">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <child>
                      <object class="GtkMenuItem" id="queue_add_menu">
                        <property name="label" translatable="yes">_Add</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="use_underline">True</property>
                        <signal name="activate" handler="queue_add_clicked_cb" swapped="no"/>
                      </object>
                    </child>
                    <child>
                      <object class="GtkMenuItem" id="queue_add_multiple_menu">
                        <property name="label" translatable="yes">Add _Multiple</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="use_underline">True</property>
                        <signal name="activate" handler="queue_add_multiple_clicked_cb" swapped="no"/>
                      </object>
                    </child>
                    <child>
                      <object class="GtkMenuItem" id="queue_start_menu">
                        <property name="label" translatable="yes">_Start Encoding</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="use_underline">True</property>
                        <signal name="activate" handler="queue_start_clicked_cb" swapped="no"/>
                      </object>
                    </child>
                    <child>
                      <object class="GtkMenuItem" id="queue_pause_menu">
                        <property name="label" translatable="yes">_Pause Encoding</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="use_underline">True</property>
                        <signal name="activate" handler="queue_pause_clicked_cb" swapped="no"/>
                      </object>
                    </child>
                  </object>
                </child>
              </object>
            </child>
            <child>
              <object class="GtkMenuItem" id="view_menu">
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="label" translatable="yes">_View</property>
                <property name="use_underline">True</property>
                <child type="submenu">
                  <object class="GtkMenu" id="view_submenu">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <child>
                      <object class="GtkCheckMenuItem" id="hbfd">
                        <property name="label" translatable="yes">HandBrake For _Dumbies</property>
                        <property name="visible">False</property>
                        <property name="can_focus">False</property>
                        <property name="use_underline">True</property>
                        <signal name="toggled" handler="hbfd_toggled_cb" swapped="no"/>
                      </object>
                    </child>
                    <child>
                      <object class="GtkCheckMenuItem" id="show_presets">
                        <property name="label" translatable="yes">_Show Presets</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="use_underline">True</property>
                        <signal name="toggled" handler="show_presets_toggled_cb" swapped="no"/>
                      </object>
                    </child>
                    <child>
                      <object class="GtkCheckMenuItem" id="show_queue_menu">
                        <property name="label" translatable="yes">_Queue</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="use_underline">True</property>
                        <signal name="toggled" handler="show_queue_menu_toggled_cb" swapped="no"/>
                      </object>
                    </child>
                    <child>
                      <object class="GtkCheckMenuItem" id="show_preview_menu">
                        <property name="label" translatable="yes">_Preview</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="use_underline">True</property>
                        <signal name="toggled" handler="preview_menu_toggled_cb" swapped="no"/>
                      </object>
                    </child>
                    <child>
                      <object class="GtkCheckMenuItem" id="show_activity_menu">
                        <property name="label" translatable="yes">_Activity Window</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="use_underline">True</property>
                        <signal name="toggled" handler="show_activity_menu_toggled_cb" swapped="no"/>
                      </object>
                    </child>
                  </object>
                </child>
              </object>
            </child>
            <child>
              <object class="GtkMenuItem" id="presets_menu">
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="label" translatable="yes">_Presets</property>
                <property name="use_underline">True</property>
                <child type="submenu">
                  <object class="GtkMenu" id="presets_submenu">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <child>
                      <object class="GtkMenuItem" id="presets_save">
                        <property name="label" translatable="yes">_Save</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="use_underline">True</property>
                        <signal name="activate" handler="presets_save_clicked_cb" swapped="no"/>
                      </object>
                    </child>
                    <child>
                      <object class="GtkMenuItem" id="presets_remove">
                        <property name="label" translatable="yes">_Delete</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="use_underline">True</property>
                        <signal name="activate" handler="presets_remove_clicked_cb" swapped="no"/>
                      </object>
                    </child>
                    <child>
                      <object class="GtkMenuItem" id="presets_default">
                        <property name="label" translatable="yes">_Make Default</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="use_underline">True</property>
                        <signal name="activate" handler="presets_default_clicked_cb" swapped="no"/>
                      </object>
                    </child>
                    <child>
                      <object class="GtkMenuItem" id="presets_new_folder">
                        <property name="label" translatable="yes">_New Folder</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="use_underline">True</property>
                        <signal name="activate" handler="presets_new_folder_clicked_cb" swapped="no"/>
                      </object>
                    </child>
                    <child>
                      <object class="GtkMenuItem" id="presets_export">
                        <property name="label" translatable="yes">_Export</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="use_underline">True</property>
                        <signal name="activate" handler="preset_export_clicked_cb" swapped="no"/>
                      </object>
                    </child>
                    <child>
                      <object class="GtkMenuItem" id="presets_import">
                        <property name="label" translatable="yes">_Import</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="use_underline">True</property>
                        <signal name="activate" handler="preset_import_clicked_cb" swapped="no"/>
                      </object>
                    </child>
                    <child>
                      <object class="GtkMenuItem" id="presets_restore">
                        <property name="label" translatable="yes">_Reload Built-in Presets</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="use_underline">True</property>
                        <signal name="activate" handler="presets_restore_clicked_cb" swapped="no"/>
                      </object>
                    </child>
                  </object>
                </child>
              </object>
            </child>
            <child>
              <object class="GtkMenuItem" id="help_menu">
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="label" translatable="yes">_Help</property>
                <property name="use_underline">True</property>
                <child type="submenu">
                  <object class="GtkMenu" id="help_submenu">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <child>
                      <object class="GtkMenuItem" id="about">
                        <property name="label" translatable="yes">_About</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="use_underline">True</property>
                        <signal name="activate" handler="about_activate_cb" swapped="no"/>
                      </object>
                    </child>
                    <child>
                      <object class="GtkMenuItem" id="guide">
                        <property name="label" translatable="yes">_Guide</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="use_underline">True</property>
                        <signal name="activate" handler="guide_activate_cb" swapped="no"/>
                      </object>
                    </child>
                  </object>
                </child>
              </object>
            </child>
          </object>
          <packing>
            <property name="expand">False</property>
            <property name="fill">True</property>
            <property name="position">0</property>
          </packing>
        </child>
        <child>
          <object class="GtkBox" id="hbox10">
            <property name="orientation">horizontal</property>
            <property name="visible">True</property>
            <property name="can_focus">False</property>
            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
            <child>
              <object class="GtkBox" id="vbox11">
                <property name="orientation">vertical</property>
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="hexpand">True</property>
                <property name="margin-end">12</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <child>
                  <object class="GtkToolbar" id="toolbar1">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="show-arrow">False</property>
                    <property name="icon_size">5</property>
                    <child>
                      <object class="GtkToolButton" id="sourcetoolbutton">
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                        <property name="tooltip_text" translatable="yes">Choose Video Source</property>
                        <property name="is_important">True</property>
                        <property name="label" translatable="yes">Open
Source</property>
                        <property name="icon_name">hb-source</property>
                        <signal name="clicked" handler="source_button_clicked_cb" swapped="no"/>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="homogeneous">True</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkToolButton" id="queue_add">
                        <property name="visible">True</property>
                        <property name="sensitive">False</property>
                        <property name="can_focus">False</property>
                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                        <property name="tooltip_text" translatable="yes">Add to Queue</property>
                        <property name="is_important">True</property>
                        <property name="label" translatable="yes">Add To
Queue</property>
                        <property name="icon_name">hb-add-queue</property>
                        <signal name="clicked" handler="queue_add_clicked_cb" swapped="no"/>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="homogeneous">True</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkToolButton" id="queue_start1">
                        <property name="visible">True</property>
                        <property name="sensitive">False</property>
                        <property name="can_focus">False</property>
                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                        <property name="tooltip_text" translatable="yes">Start Encoding</property>
                        <property name="is_important">True</property>
                        <property name="label" translatable="yes">Start
Encoding</property>
                        <property name="icon_name">hb-start</property>
                        <signal name="clicked" handler="queue_start_clicked_cb" swapped="no"/>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="homogeneous">True</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkToolButton" id="queue_pause1">
                        <property name="visible">True</property>
                        <property name="sensitive">False</property>
                        <property name="can_focus">False</property>
                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                        <property name="tooltip_text" translatable="yes">Pause Encoding</property>
                        <property name="is_important">True</property>
                        <property name="label" translatable="yes">Pause
Encoding</property>
                        <property name="icon_name">hb-pause</property>
                        <signal name="clicked" handler="queue_pause_clicked_cb" swapped="no"/>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="homogeneous">True</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkSeparatorToolItem" id="main_tool_sep1">
                        <property name="visible">True</property>
                        <property name="draw">False</property>
                      </object>
                      <packing>
                        <property name="expand">True</property>
                        <property name="homogeneous">False</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkToggleToolButton" id="show_queue">
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                        <property name="tooltip_text" translatable="yes">Show Queue</property>
                        <property name="is_important">True</property>
                        <property name="label" translatable="yes">Show
Queue</property>
                        <property name="icon_name">hb-showqueue</property>
                        <signal name="toggled" handler="show_queue_toggled_cb" swapped="no"/>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="homogeneous">True</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkToggleToolButton" id="show_preview">
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                        <property name="tooltip_text" translatable="yes">Show Preview Window</property>
                        <property name="is_important">True</property>
                        <property name="label" translatable="yes">Show
Preview</property>
                        <property name="icon_name">hb-picture</property>
                        <signal name="toggled" handler="preview_toggled_cb" swapped="no"/>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="homogeneous">True</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkToggleToolButton" id="show_activity">
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                        <property name="tooltip_text" translatable="yes">Show Activity Window</property>
                        <property name="is_important">True</property>
                        <property name="label" translatable="yes">Show
Activity</property>
                        <property name="icon_name">hb-activity</property>
                        <signal name="toggled" handler="show_activity_toggled_cb" swapped="no"/>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="homogeneous">True</property>
                      </packing>
                    </child>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="fill">True</property>
                    <property name="position">0</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkBox" id="vbox15">
                    <property name="orientation">vertical</property>
                    <property name="hexpand">True</property>
                    <property name="halign">GTK_ALIGN_FILL</property>
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="spacing">6</property>
                    <child>
                      <object class="GtkBox" id="hbox54">
                        <property name="orientation">horizontal</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                        <property name="spacing">6</property>
                        <property name="margin-start">6</property>
                        <child>
                          <object class="GtkLabel" id="label7">
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="label" translatable="yes">&lt;b&gt;Source:&lt;/b&gt;</property>
                            <property name="use_markup">True</property>
                          </object>
                          <packing>
                            <property name="expand">False</property>
                            <property name="fill">True</property>
                            <property name="position">0</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkLabel" id="volume_label">
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="halign">start</property>
                            <property name="label" translatable="yes">None</property>
                          </object>
                          <packing>
                            <property name="expand">True</property>
                            <property name="fill">True</property>
                            <property name="position">1</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkProgressBar" id="scan_prog">
                            <property name="width_request">400</property>
                            <property name="height_request">10</property>
                            <property name="can_focus">False</property>
                            <property name="valign">center</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                          </object>
                          <packing>
                            <property name="expand">False</property>
                            <property name="fill">True</property>
                            <property name="position">2</property>
                          </packing>
                        </child>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="fill">True</property>
                        <property name="position">0</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkGrid" id="table7">
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="hexpand">True</property>
                        <property name="column_spacing">5</property>
                        <property name="hexpand">True</property>
                        <property name="halign">GTK_ALIGN_FILL</property>
                        <property name="margin-start">6</property>
                        <property name="row-spacing">2</property>
                        <child>
                          <object class="GtkLabel" id="label20">
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="halign">end</property>
                            <property name="label" translatable="yes">Title:</property>
                          </object>
                          <packing>
                            <property name="top_attach">0</property>
                            <property name="left_attach">0</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkBox" id="hbox42">
                            <property name="orientation">horizontal</property>
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="hexpand">True</property>
                            <property name="halign">GTK_ALIGN_FILL</property>
                            <property name="spacing">5</property>
                            <child>
                              <object class="GtkComboBox" id="title">
                                <property name="visible">True</property>
                                <property name="valign">GTK_ALIGN_CENTER</property>
                                <property name="can_focus">False</property>
                                <property name="halign">start</property>
                                <property name="tooltip_text" translatable="yes">Set the title to encode.
By default the longest title is chosen.
This is often the feature title of a DVD.</property>
                                <property name="has_frame">False</property>
                                <signal name="changed" handler="title_changed_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="expand">True</property>
                                <property name="fill">True</property>
                                <property name="position">0</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkLabel" id="angle_label">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="halign">end</property>
                                <property name="label" translatable="yes">Angle:</property>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">False</property>
                                <property name="position">1</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkSpinButton" id="angle">
                                <property name="width-chars">3</property>
                                <property name="visible">True</property>
                                <property name="can_focus">True</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="tooltip_text" translatable="yes">For multi-angle DVD's, select the desired angle to encode.</property>
                                <property name="primary_icon_activatable">False</property>
                                <property name="secondary_icon_activatable">False</property>
                                <property name="adjustment">adjustment27</property>
                                <property name="halign">end</property>
                                <signal name="value-changed" handler="title_angle_changed_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">True</property>
                                <property name="position">2</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkButton" id="title_reset">
                                <property name="label" translatable="yes">Reset All Titles</property>
                                <property name="visible">True</property>
                                <property name="can_focus">True</property>
                                <property name="tooltip_text" translatable="yes">Apply current settings to all titles</property>
                                <property name="receives_default">True</property>
                                <property name="halign">end</property>
                                <signal name="clicked" handler="title_reset_clicked_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">True</property>
                                <property name="position">3</property>
                              </packing>
                            </child>
                          </object>
                          <packing>
                            <property name="top_attach">0</property>
                            <property name="left_attach">1</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkBox" id="chapter_box">
                            <property name="halign">start</property>
                            <property name="valign">center</property>
                            <property name="orientation">horizontal</property>
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="spacing">5</property>
                            <child>
                              <object class="GtkComboBox" id="PtoPType">
                                <property name="visible">True</property>
                                <property name="valign">GTK_ALIGN_CENTER</property>
                                <property name="can_focus">False</property>
                                <property name="tooltip_text" translatable="yes">Range of title to encode. Can be chapters, seconds, or frames.</property>
                                <signal name="changed" handler="ptop_widget_changed_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">True</property>
                                <property name="position">0</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkSpinButton" id="start_point">
                                <property name="width-chars">10</property>
                                <property name="visible">True</property>
                                <property name="can_focus">True</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="tooltip_text" translatable="yes">Set the first chapter to encode.</property>
                                <property name="primary_icon_activatable">False</property>
                                <property name="secondary_icon_activatable">False</property>
                                <property name="adjustment">adjustment1</property>
                                <property name="numeric">True</property>
                                <signal name="value-changed" handler="start_point_changed_cb" swapped="no"/>
                                <signal name="output" handler="ptop_output_cb" swapped="no"/>
                                <signal name="input" handler="ptop_input_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">True</property>
                                <property name="position">1</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkLabel" id="label56">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="label" translatable="yes">through</property>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">True</property>
                                <property name="position">2</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkSpinButton" id="end_point">
                                <property name="width-chars">10</property>
                                <property name="visible">True</property>
                                <property name="can_focus">True</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="tooltip_text" translatable="yes">Set the last chapter to encode.</property>
                                <property name="primary_icon_activatable">False</property>
                                <property name="secondary_icon_activatable">False</property>
                                <property name="adjustment">adjustment2</property>
                                <property name="numeric">True</property>
                                <signal name="value-changed" handler="end_point_changed_cb" swapped="no"/>
                                <signal name="output" handler="ptop_output_cb" swapped="no"/>
                                <signal name="input" handler="ptop_input_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">True</property>
                                <property name="position">3</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkBox" id="hbox47">
                                <property name="orientation">horizontal</property>
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="spacing">7</property>
                                <child>
                                  <object class="GtkLabel" id="label6">
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="halign">start</property>
                                    <property name="label" translatable="yes">Duration:</property>
                                  </object>
                                  <packing>
                                    <property name="expand">False</property>
                                    <property name="fill">True</property>
                                    <property name="position">0</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkLabel" id="title_duration">
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="halign">start</property>
                                    <property name="label" translatable="yes">hh:mm:ss</property>
                                    <property name="width_chars">8</property>
                                  </object>
                                  <packing>
                                    <property name="expand">False</property>
                                    <property name="fill">True</property>
                                    <property name="position">1</property>
                                  </packing>
                                </child>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">True</property>
                                <property name="position">4</property>
                              </packing>
                            </child>
                          </object>
                          <packing>
                            <property name="top_attach">1</property>
                            <property name="left_attach">1</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
                        </child>
                      </object>
                      <packing>
                        <property name="expand">True</property>
                        <property name="fill">True</property>
                        <property name="position">1</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkLabel" id="label9">
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="label" translatable="yes">&lt;b&gt;Destination&lt;/b&gt;</property>
                        <property name="halign">GTK_ALIGN_START</property>
                        <property name="use_markup">True</property>
                        <property name="margin-start">6</property>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="fill">False</property>
                        <property name="position">2</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkBox" id="hbox67">
                        <property name="orientation">horizontal</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="spacing">6</property>
                        <property name="margin-start">6</property>
                        <child>
                          <object class="GtkGrid" id="table4">
                            <property name="row-spacing">2</property>
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="margin-bottom">6</property>
                            <child>
                              <object class="GtkLabel" id="label18">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="halign">end</property>
                                <property name="label" translatable="yes">File:</property>
                              </object>
                              <packing>
                                <property name="top_attach">0</property>
                                <property name="left_attach">0</property>
                                <property name="width">1</property>
                                <property name="height">1</property>
                              </packing>
                            </child>
                            <child>
                              <placeholder/>
                            </child>
                            <child>
                              <object class="GtkEntry" id="dest_file">
                                <property name="visible">True</property>
                                <property name="can_focus">True</property>
                                <property name="tooltip_text" translatable="yes">Destination filename for your encode.</property>
                                <property name="width_chars">40</property>
                                <property name="primary_icon_activatable">False</property>
                                <property name="secondary_icon_activatable">False</property>
                                <accelerator key="d" signal="grab-focus" modifiers="GDK_MOD1_MASK"/>
                                <signal name="changed" handler="dest_file_changed_cb" swapped="no"/>
                                <signal name="grab-focus" handler="destination_grab_cb" after="yes" swapped="no"/>
                              </object>
                              <packing>
                                <property name="top_attach">0</property>
                                <property name="left_attach">1</property>
                                <property name="width">1</property>
                                <property name="height">1</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkFileChooserButton" id="dest_dir">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="tooltip_text" translatable="yes">Destination directory for your encode.</property>
                                <property name="action">select-folder</property>
                                <property name="local_only">False</property>
                                <property name="title" translatable="yes">Destination Directory</property>
                                <signal name="selection-changed" handler="dest_dir_set_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="top_attach">1</property>
                                <property name="left_attach">1</property>
                                <property name="width">1</property>
                                <property name="height">1</property>
                              </packing>
                            </child>
                          </object>
                          <packing>
                            <property name="expand">False</property>
                            <property name="fill">True</property>
                            <property name="position">0</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkGrid" id="container_box">
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="column_spacing">4</property>
                            <property name="row-spacing">2</property>
                            <child>
                              <object class="GtkBox" id="hbox3">
                                <property name="orientation">horizontal</property>
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="spacing">4</property>
                                <child>
                                  <object class="GtkLabel" id="label45">
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="label" translatable="yes">Format:</property>
                                  </object>
                                  <packing>
                                    <property name="expand">False</property>
                                    <property name="fill">False</property>
                                    <property name="position">0</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkComboBox" id="FileFormat">
                                    <property name="visible">True</property>
                                    <property name="valign">GTK_ALIGN_CENTER</property>
                                    <property name="can_focus">False</property>
                                    <property name="tooltip_text" translatable="yes">Format to mux encoded tracks to.</property>
                                    <signal name="changed" handler="container_changed_cb" swapped="no"/>
                                  </object>
                                  <packing>
                                    <property name="expand">False</property>
                                    <property name="fill">True</property>
                                    <property name="position">1</property>
                                  </packing>
                                </child>
                              </object>
                              <packing>
                                <property name="top_attach">0</property>
                                <property name="left_attach">0</property>
                                <property name="width">1</property>
                                <property name="height">1</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkCheckButton" id="Mp4iPodCompatible">
                                <property name="label" translatable="yes">iPod 5G Support</property>
                                <property name="visible">True</property>
                                <property name="can_focus">True</property>
                                <property name="receives_default">False</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="tooltip_text" translatable="yes">Add iPod Atom needed by some older iPods.</property>
                                <property name="halign">start</property>
                                <property name="draw_indicator">True</property>
                                <signal name="toggled" handler="setting_widget_changed_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="top_attach">1</property>
                                <property name="left_attach">1</property>
                                <property name="width">1</property>
                                <property name="height">1</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkCheckButton" id="Mp4HttpOptimize">
                                <property name="label" translatable="yes">Web optimized</property>
                                <property name="visible">True</property>
                                <property name="can_focus">True</property>
                                <property name="receives_default">False</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="tooltip_text" translatable="yes">Optimize the layout of the MP4 file for progressive download.
This allows a player to initiate playback before downloading the entire file.</property>
                                <property name="halign">start</property>
                                <property name="draw_indicator">True</property>
                                <signal name="toggled" handler="setting_widget_changed_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="top_attach">1</property>
                                <property name="left_attach">0</property>
                                <property name="width">1</property>
                                <property name="height">1</property>
                              </packing>
                            </child>
                          </object>
                          <packing>
                            <property name="expand">False</property>
                            <property name="fill">True</property>
                            <property name="position">1</property>
                          </packing>
                        </child>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="fill">True</property>
                        <property name="position">3</property>
                      </packing>
                    </child>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="fill">True</property>
                    <property name="position">1</property>
                  </packing>
                </child>
              </object>
              <packing>
                <property name="expand">True</property>
                <property name="fill">True</property>
                <property name="position">0</property>
              </packing>
            </child>
            <child>
              <object class="GtkFrame" id="presets_frame">
                <property name="can_focus">False</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <property name="label_xalign">0</property>
                <property name="shadow_type">none</property>
                <property name="margin-end">6</property>
                <property name="margin-bottom">6</property>
                <child>
                  <object class="GtkScrolledWindow" id="presets_scroll">
                    <property name="visible">True</property>
                    <property name="can_focus">True</property>
                    <property name="shadow_type">etched-in</property>
                    <property name="margin-top">6</property>
                    <property name="min_content_width">200</property>
                    <child>
                      <object class="GtkTreeView" id="presets_list">
                        <property name="width_request">206</property>
                        <property name="visible">True</property>
                        <property name="can_focus">True</property>
                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                        <property name="headers_visible">False</property>
                        <child internal-child="selection">
                          <object class="GtkTreeSelection" id="treeview-selection4"/>
                        </child>
                      </object>
                    </child>
                  </object>
                </child>
                <child type="label">
                  <object class="GtkLabel" id="label34">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="label" translatable="yes">&lt;b&gt;Presets List&lt;/b&gt;</property>
                    <property name="use_markup">True</property>
                  </object>
                </child>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">True</property>
                <property name="position">1</property>
              </packing>
            </child>
          </object>
          <packing>
            <property name="expand">False</property>
            <property name="fill">True</property>
            <property name="position">1</property>
          </packing>
        </child>
        <child>
          <object class="GtkStack" id="QueueStack">
            <property name="homogeneous">True</property>
            <property name="transition-type">GTK_STACK_TRANSITION_TYPE_SLIDE_LEFT_RIGHT</property>
            <property name="transition-duration">400</property>
            <property name="visible">True</property>
            <property name="can_focus">True</property>
            <child>
              <object class="GtkBox" id="settings_tab">
                <property name="orientation">vertical</property>
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <child>
                  <object class="GtkStackSwitcher" id="SettingsStackSwitcher">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="stack">SettingsStack</property>
                    <property name="hexpand">True</property>
                    <property name="halign">GTK_ALIGN_FILL</property>
                    <property name="margin-start">12</property>
                    <property name="margin-end">12</property>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="fill">False</property>
                    <property name="position">0</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkStack" id="SettingsStack">
                    <property name="homogeneous">True</property>
                    <property name="transition-type">GTK_STACK_TRANSITION_TYPE_SLIDE_LEFT_RIGHT</property>
                    <property name="transition-duration">400</property>
                    <property name="visible">True</property>
                    <property name="can_focus">True</property>
                    <property name="margin-start">12</property>
                    <property name="margin-end">12</property>
                    <child>
                      <object class="GtkBox" id="summary_tab">
                        <property name="orientation">horizontal</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                        <property name="spacing">3</property>
                        <child>
                          <object class="GtkBox" id="picture_summary">
                            <property name="orientation">vertical</property>
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="spacing">0</property>
                            <property name="margin-top">10</property>
                            <property name="margin-start">10</property>
                            <child>
                              <object class="GtkFrame" id="frame5">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="label_xalign">0</property>
                                <property name="shadow_type">none</property>
                                <child>
                                  <object class="GtkGrid" id="table11">
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="row_homogeneous">True</property>
                                    <property name="column_homogeneous">True</property>
                                    <property name="margin-top">6</property>
                                    <property name="margin-bottom">2</property>
                                    <property name="margin-start">12</property>
                                    <child>
                                      <object class="GtkLabel" id="labela5">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="halign">start</property>
                                        <property name="label" translatable="yes">Source Codec:</property>
                                      </object>
                                      <packing>
                                        <property name="top_attach">0</property>
                                        <property name="left_attach">0</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkLabel" id="source_video_codec">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="label" translatable="yes">--</property>
                                      </object>
                                      <packing>
                                        <property name="top_attach">0</property>
                                        <property name="left_attach">1</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkLabel" id="label23">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="halign">start</property>
                                        <property name="label" translatable="yes">Dimensions:</property>
                                      </object>
                                      <packing>
                                        <property name="top_attach">1</property>
                                        <property name="left_attach">0</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkLabel" id="source_dimensions">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="label" translatable="yes">--</property>
                                      </object>
                                      <packing>
                                        <property name="top_attach">1</property>
                                        <property name="left_attach">1</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkLabel" id="label42">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="halign">start</property>
                                        <property name="label" translatable="yes">Aspect: </property>
                                      </object>
                                      <packing>
                                        <property name="top_attach">2</property>
                                        <property name="left_attach">0</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkLabel" id="source_aspect">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="label" translatable="yes">--</property>
                                      </object>
                                      <packing>
                                        <property name="top_attach">2</property>
                                        <property name="left_attach">1</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkLabel" id="label43">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="halign">start</property>
                                        <property name="label" translatable="yes">Frame Rate:</property>
                                      </object>
                                      <packing>
                                        <property name="top_attach">3</property>
                                        <property name="left_attach">0</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkLabel" id="source_frame_rate">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="label" translatable="yes">--</property>
                                      </object>
                                      <packing>
                                        <property name="top_attach">3</property>
                                        <property name="left_attach">1</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                  </object>
                                </child>
                                <child type="label">
                                  <object class="GtkLabel" id="label44">
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="label" translatable="yes">&lt;b&gt;Source Picture Parameters&lt;/b&gt;</property>
                                    <property name="use_markup">True</property>
                                  </object>
                                </child>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">True</property>
                                <property name="padding">2</property>
                                <property name="position">0</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkFrame" id="Cropping1">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="label_xalign">0</property>
                                <property name="shadow_type">none</property>
                                <child>
                                  <object class="GtkGrid" id="table12">
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="row_homogeneous">True</property>
                                    <property name="column_homogeneous">True</property>
                                    <property name="margin-top">6</property>
                                    <property name="margin-bottom">2</property>
                                    <property name="margin-start">12</property>
                                    <property name="margin-end">2</property>
                                    <child>
                                      <object class="GtkLabel" id="label13">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="halign">start</property>
                                        <property name="label" translatable="yes">Autocrop:</property>
                                      </object>
                                      <packing>
                                        <property name="top_attach">0</property>
                                        <property name="left_attach">0</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkLabel" id="crop_auto">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="label" translatable="yes">On</property>
                                      </object>
                                      <packing>
                                        <property name="top_attach">0</property>
                                        <property name="left_attach">1</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkLabel" id="label12">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="halign">start</property>
                                        <property name="label" translatable="yes">Crop:</property>
                                      </object>
                                      <packing>
                                        <property name="top_attach">1</property>
                                        <property name="left_attach">0</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkLabel" id="crop_values">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="label" translatable="yes">--</property>
                                      </object>
                                      <packing>
                                        <property name="top_attach">1</property>
                                        <property name="left_attach">1</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkLabel" id="label76">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="halign">start</property>
                                        <property name="label" translatable="yes">Crop Dimensions:</property>
                                      </object>
                                      <packing>
                                        <property name="top_attach">2</property>
                                        <property name="left_attach">0</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkLabel" id="crop_dimensions">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="label" translatable="yes">--</property>
                                      </object>
                                      <packing>
                                        <property name="top_attach">2</property>
                                        <property name="left_attach">1</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                  </object>
                                </child>
                                <child type="label">
                                  <object class="GtkLabel" id="label16">
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="label" translatable="yes">&lt;b&gt;Cropping&lt;/b&gt;</property>
                                    <property name="use_markup">True</property>
                                  </object>
                                </child>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">True</property>
                                <property name="padding">2</property>
                                <property name="position">1</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkFrame" id="frame16">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="label_xalign">0</property>
                                <property name="shadow_type">none</property>
                                <child>
                                  <object class="GtkGrid" id="table13">
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="row_homogeneous">True</property>
                                    <property name="column_homogeneous">True</property>
                                    <property name="margin-top">6</property>
                                    <property name="margin-bottom">2</property>
                                    <property name="margin-start">12</property>
                                    <property name="margin-end">2</property>
                                    <child>
                                      <object class="GtkLabel" id="label14">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="halign">start</property>
                                        <property name="label" translatable="yes">Scale Dimensions:</property>
                                      </object>
                                      <packing>
                                        <property name="top_attach">0</property>
                                        <property name="left_attach">0</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkLabel" id="scale_dimensions">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="label" translatable="yes">--</property>
                                      </object>
                                      <packing>
                                        <property name="top_attach">0</property>
                                        <property name="left_attach">1</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkLabel" id="label15">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="halign">start</property>
                                        <property name="label" translatable="yes">Optimal for Source:</property>
                                      </object>
                                      <packing>
                                        <property name="top_attach">1</property>
                                        <property name="left_attach">0</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkLabel" id="scale_auto">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="label" translatable="yes">On</property>
                                      </object>
                                      <packing>
                                        <property name="top_attach">1</property>
                                        <property name="left_attach">1</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkLabel" id="label17">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="halign">start</property>
                                        <property name="label" translatable="yes">Anamorphic:</property>
                                      </object>
                                      <packing>
                                        <property name="top_attach">2</property>
                                        <property name="left_attach">0</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkLabel" id="scale_anamorphic">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="label" translatable="yes">On</property>
                                      </object>
                                      <packing>
                                        <property name="top_attach">2</property>
                                        <property name="left_attach">1</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                  </object>
                                </child>
                                <child type="label">
                                  <object class="GtkLabel" id="label19">
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="label" translatable="yes">&lt;b&gt;Scaling&lt;/b&gt;</property>
                                    <property name="use_markup">True</property>
                                  </object>
                                </child>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">True</property>
                                <property name="padding">2</property>
                                <property name="position">2</property>
                              </packing>
                            </child>
                          </object>
                          <packing>
                            <property name="expand">True</property>
                            <property name="fill">True</property>
                            <property name="position">0</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkBox" id="vbox9">
                            <property name="orientation">vertical</property>
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="valign">center</property>
                            <property name="margin-top">12</property>
                            <property name="margin-end">12</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <child>
                              <object class="GtkImage" id="preview_button_image">
                                <property name="width_request">448</property>
                                <property name="height_request">200</property>
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="valign">end</property>
                                <property name="margin-bottom">4</property>
                                <property name="margin-start">4</property>
                                <property name="margin-end">4</property>
                                <property name="pixel_size">128</property>
                                <property name="icon_name">hb-icon</property>
                                <signal name="size-allocate" handler="preview_button_size_allocate_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">False</property>
                                <property name="position">1</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkBox" id="picture_summary2">
                                <property name="orientation">horizontal</property>
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="spacing">4</property>
                                <property name="halign">center</property>
                                <property name="valign">start</property>
                                <child>
                                  <object class="GtkLabel" id="label10">
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="label" translatable="yes">Presentation Dimensions:</property>
                                    <property name="justify">right</property>
                                  </object>
                                  <packing>
                                    <property name="expand">False</property>
                                    <property name="fill">True</property>
                                    <property name="position">0</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkLabel" id="preview_dims">
                                    <property name="width_request">85</property>
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="halign">start</property>
                                    <property name="valign">start</property>
                                    <property name="label" translatable="yes">--</property>
                                  </object>
                                  <packing>
                                    <property name="expand">False</property>
                                    <property name="fill">True</property>
                                    <property name="position">1</property>
                                  </packing>
                                </child>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">False</property>
                                <property name="position">2</property>
                              </packing>
                            </child>
                          </object>
                          <packing>
                            <property name="expand">True</property>
                            <property name="fill">True</property>
                            <property name="position">1</property>
                          </packing>
                        </child>
                      </object>
                      <packing>
                        <property name="position">0</property>
                        <property name="name">summary_tab</property>
                        <property name="title" translatable="yes">Summary</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkBox" id="picture_tab">
                        <property name="orientation">vertical</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="margin-top">16</property>
                        <property name="margin-start">16</property>
                        <property name="spacing">16</property>
                        <child>
                          <object class="GtkBox" id="hbox75">
                            <property name="orientation">horizontal</property>
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="spacing">16</property>
                            <child>
                              <object class="GtkFrame" id="Cropping2">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="label_xalign">0</property>
                                <property name="shadow_type">none</property>
                                <child>
                                  <object class="GtkBox" id="vbox6">
                                    <property name="orientation">vertical</property>
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="margin-top">6</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <child>
                                      <object class="GtkGrid" id="table2">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <child>
                                          <object class="GtkSpinButton" id="PictureLeftCrop">
                                            <property name="width-chars">7</property>
                                            <property name="visible">True</property>
                                            <property name="can_focus">True</property>
                                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                            <property name="tooltip_text" translatable="yes">Left Crop</property>
                                            <property name="primary_icon_activatable">False</property>
                                            <property name="secondary_icon_activatable">False</property>
                                            <property name="adjustment">adjustment13</property>
                                            <signal name="value-changed" handler="crop_changed_cb" swapped="no"/>
                                          </object>
                                          <packing>
                                            <property name="top_attach">1</property>
                                            <property name="left_attach">0</property>
                                            <property name="width">1</property>
                                            <property name="height">1</property>
                                          </packing>
                                        </child>
                                        <child>
                                          <object class="GtkSpinButton" id="PictureTopCrop">
                                            <property name="width-chars">7</property>
                                            <property name="visible">True</property>
                                            <property name="can_focus">True</property>
                                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                            <property name="tooltip_text" translatable="yes">Top Crop</property>
                                            <property name="primary_icon_activatable">False</property>
                                            <property name="secondary_icon_activatable">False</property>
                                            <property name="adjustment">adjustment14</property>
                                            <signal name="value-changed" handler="crop_changed_cb" swapped="no"/>
                                          </object>
                                          <packing>
                                            <property name="top_attach">0</property>
                                            <property name="left_attach">1</property>
                                            <property name="width">1</property>
                                            <property name="height">1</property>
                                          </packing>
                                        </child>
                                        <child>
                                          <object class="GtkSpinButton" id="PictureBottomCrop">
                                            <property name="width-chars">7</property>
                                            <property name="visible">True</property>
                                            <property name="can_focus">True</property>
                                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                            <property name="tooltip_text" translatable="yes">Bottom Crop</property>
                                            <property name="primary_icon_activatable">False</property>
                                            <property name="secondary_icon_activatable">False</property>
                                            <property name="adjustment">adjustment15</property>
                                            <signal name="value-changed" handler="crop_changed_cb" swapped="no"/>
                                          </object>
                                          <packing>
                                            <property name="top_attach">2</property>
                                            <property name="left_attach">1</property>
                                            <property name="width">1</property>
                                            <property name="height">1</property>
                                          </packing>
                                        </child>
                                        <child>
                                          <object class="GtkSpinButton" id="PictureRightCrop">
                                            <property name="width-chars">7</property>
                                            <property name="visible">True</property>
                                            <property name="can_focus">True</property>
                                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                            <property name="tooltip_text" translatable="yes">Right Crop</property>
                                            <property name="primary_icon_activatable">False</property>
                                            <property name="secondary_icon_activatable">False</property>
                                            <property name="adjustment">adjustment16</property>
                                            <signal name="value-changed" handler="crop_changed_cb" swapped="no"/>
                                          </object>
                                          <packing>
                                            <property name="top_attach">1</property>
                                            <property name="left_attach">2</property>
                                            <property name="width">1</property>
                                            <property name="height">1</property>
                                          </packing>
                                        </child>
                                        <child>
                                          <placeholder/>
                                        </child>
                                        <child>
                                          <placeholder/>
                                        </child>
                                        <child>
                                          <placeholder/>
                                        </child>
                                        <child>
                                          <placeholder/>
                                        </child>
                                        <child>
                                          <object class="GtkCheckButton" id="PictureAutoCrop">
                                            <property name="label" translatable="yes">Auto Crop</property>
                                            <property name="visible">True</property>
                                            <property name="can_focus">True</property>
                                            <property name="receives_default">False</property>
                                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                            <property name="tooltip_text" translatable="yes">Automatically crop black borders around edges of the video.</property>
                                            <property name="halign">start</property>
                                            <property name="draw_indicator">True</property>
                                            <signal name="toggled" handler="scale_changed_cb" swapped="no"/>
                                          </object>
                                          <packing>
                                            <property name="top_attach">3</property>
                                            <property name="left_attach">0</property>
                                            <property name="width">2</property>
                                            <property name="height">1</property>
                                          </packing>
                                        </child>
                                        <child>
                                          <object class="GtkCheckButton" id="PictureLooseCrop">
                                            <property name="label" translatable="yes">Loose Crop</property>
                                            <property name="visible">True</property>
                                            <property name="can_focus">True</property>
                                            <property name="receives_default">False</property>
                                            <property name="tooltip_text" translatable="yes">When picture settings require that the image
dimensions be rounded to some multiple number
of pixels, this setting will crop a few extra pixels
instead of doing exact cropping and then scaling to
the required multiple.</property>
                                            <property name="halign">start</property>
                                            <property name="draw_indicator">True</property>
                                            <signal name="toggled" handler="scale_changed_cb" swapped="no"/>
                                          </object>
                                          <packing>
                                            <property name="top_attach">4</property>
                                            <property name="left_attach">0</property>
                                            <property name="width">2</property>
                                            <property name="height">1</property>
                                          </packing>
                                        </child>
                                      </object>
                                      <packing>
                                        <property name="expand">False</property>
                                        <property name="fill">True</property>
                                        <property name="position">0</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkBox" id="hbox78">
                                        <property name="orientation">horizontal</property>
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="spacing">4</property>
                                        <child>
                                          <object class="GtkLabel" id="label97">
                                            <property name="visible">True</property>
                                            <property name="can_focus">False</property>
                                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                            <property name="halign">start</property>
                                            <property name="label" translatable="yes">Crop Dimensions:</property>
                                          </object>
                                          <packing>
                                            <property name="expand">False</property>
                                            <property name="fill">True</property>
                                            <property name="position">0</property>
                                          </packing>
                                        </child>
                                        <child>
                                          <object class="GtkLabel" id="crop_dimensions2">
                                            <property name="visible">True</property>
                                            <property name="can_focus">False</property>
                                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                            <property name="label" translatable="yes">--</property>
                                          </object>
                                          <packing>
                                            <property name="expand">True</property>
                                            <property name="fill">True</property>
                                            <property name="position">1</property>
                                          </packing>
                                        </child>
                                      </object>
                                      <packing>
                                        <property name="expand">True</property>
                                        <property name="fill">True</property>
                                        <property name="position">1</property>
                                      </packing>
                                    </child>
                                  </object>
                                </child>
                                <child type="label">
                                  <object class="GtkLabel" id="label26">
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="label" translatable="yes">&lt;b&gt;Cropping&lt;/b&gt;</property>
                                    <property name="use_markup">True</property>
                                  </object>
                                </child>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">True</property>
                                <property name="padding">2</property>
                                <property name="position">0</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkFrame" id="frame3">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="label_xalign">0</property>
                                <property name="shadow_type">none</property>
                                <child>
                                  <object class="GtkBox" id="vbox30">
                                    <property name="orientation">vertical</property>
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="spacing">2</property>
                                    <child>
                                      <object class="GtkBox" id="hbox51">
                                        <property name="orientation">horizontal</property>
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="spacing">4</property>
                                        <child>
                                          <object class="GtkLabel" id="label27">
                                            <property name="visible">True</property>
                                            <property name="can_focus">False</property>
                                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                            <property name="label" translatable="yes">width:</property>
                                          </object>
                                          <packing>
                                            <property name="expand">False</property>
                                            <property name="fill">True</property>
                                            <property name="position">0</property>
                                          </packing>
                                        </child>
                                        <child>
                                          <object class="GtkSpinButton" id="scale_width">
                                            <property name="width-chars">7</property>
                                            <property name="visible">True</property>
                                            <property name="can_focus">True</property>
                                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                            <property name="tooltip_text" translatable="yes">This is the width that the video will be stored at.
The actual display dimensions will differ if the pixel aspect ratio is not 1:1.</property>
                                            <property name="primary_icon_activatable">False</property>
                                            <property name="secondary_icon_activatable">False</property>
                                            <property name="adjustment">adjustment17</property>
                                            <property name="snap_to_ticks">True</property>
                                            <signal name="value-changed" handler="scale_width_changed_cb" swapped="no"/>
                                          </object>
                                          <packing>
                                            <property name="expand">False</property>
                                            <property name="fill">True</property>
                                            <property name="position">1</property>
                                          </packing>
                                        </child>
                                        <child>
                                          <object class="GtkLabel" id="label28">
                                            <property name="visible">True</property>
                                            <property name="can_focus">False</property>
                                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                            <property name="label" translatable="yes">height:</property>
                                          </object>
                                          <packing>
                                            <property name="expand">False</property>
                                            <property name="fill">True</property>
                                            <property name="position">2</property>
                                          </packing>
                                        </child>
                                        <child>
                                          <object class="GtkSpinButton" id="scale_height">
                                            <property name="width-chars">7</property>
                                            <property name="visible">True</property>
                                            <property name="can_focus">True</property>
                                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                            <property name="tooltip_text" translatable="yes">This is the height that the video will be stored at.
The actual display dimensions will differ if the pixel aspect ratio is not 1:1.</property>
                                            <property name="primary_icon_activatable">False</property>
                                            <property name="secondary_icon_activatable">False</property>
                                            <property name="adjustment">adjustment18</property>
                                            <signal name="value-changed" handler="scale_height_changed_cb" swapped="no"/>
                                          </object>
                                          <packing>
                                            <property name="expand">False</property>
                                            <property name="fill">True</property>
                                            <property name="position">3</property>
                                          </packing>
                                        </child>
                                      </object>
                                      <packing>
                                        <property name="expand">False</property>
                                        <property name="fill">True</property>
                                        <property name="position">0</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkBox" id="hbox71">
                                        <property name="orientation">horizontal</property>
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <child>
                                          <object class="GtkCheckButton" id="autoscale">
                                            <property name="label" translatable="yes">Optimal for source</property>
                                            <property name="visible">True</property>
                                            <property name="can_focus">True</property>
                                            <property name="receives_default">False</property>
                                            <property name="tooltip_text" translatable="yes">If enabled, select the 'optimal' storage resolution.
This will be the resolution that most closely matches the source resolution after cropping.</property>
                                            <property name="halign">start</property>
                                            <property name="draw_indicator">True</property>
                                            <signal name="toggled" handler="scale_changed_cb" swapped="no"/>
                                          </object>
                                          <packing>
                                            <property name="expand">True</property>
                                            <property name="fill">True</property>
                                            <property name="position">0</property>
                                          </packing>
                                        </child>
                                      </object>
                                      <packing>
                                        <property name="expand">False</property>
                                        <property name="fill">True</property>
                                        <property name="position">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkBox" id="hbox20">
                                        <property name="orientation">horizontal</property>
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="spacing">5</property>
                                        <child>
                                          <object class="GtkLabel" id="label96">
                                            <property name="visible">True</property>
                                            <property name="can_focus">False</property>
                                            <property name="halign">start</property>
                                            <property name="label" translatable="yes">Anamorphic:</property>
                                          </object>
                                          <packing>
                                            <property name="expand">False</property>
                                            <property name="fill">True</property>
                                            <property name="position">0</property>
                                          </packing>
                                        </child>
                                        <child>
                                          <object class="GtkComboBox" id="PicturePAR">
                                            <property name="visible">True</property>
                                            <property name="valign">GTK_ALIGN_CENTER</property>
                                            <property name="can_focus">False</property>
                                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                            <property name="tooltip_markup" translatable="yes">&lt;b&gt;Anamorphic Modes:&lt;/b&gt;
&lt;small&gt;&lt;tt&gt;
None   - Force pixel aspect ratio to 1:1.
Loose  - Align dimensions to chosen 'Alignment' value
         and pick pixel aspect ratio that preserves the
         original display aspect ratio
Strict - Keep original source dimensions and pixel
         aspect ratio&lt;/tt&gt;&lt;/small&gt;</property>
                                            <signal name="changed" handler="scale_changed_cb" swapped="no"/>
                                          </object>
                                          <packing>
                                            <property name="expand">False</property>
                                            <property name="fill">True</property>
                                            <property name="position">1</property>
                                          </packing>
                                        </child>
                                      </object>
                                      <packing>
                                        <property name="expand">False</property>
                                        <property name="fill">True</property>
                                        <property name="position">2</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkBox" id="hbox72">
                                        <property name="orientation">horizontal</property>
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="spacing">5</property>
                                        <child>
                                          <object class="GtkLabel" id="label95">
                                            <property name="visible">True</property>
                                            <property name="can_focus">False</property>
                                            <property name="halign">start</property>
                                            <property name="label" translatable="yes">Alignment:</property>
                                          </object>
                                          <packing>
                                            <property name="expand">False</property>
                                            <property name="fill">True</property>
                                            <property name="position">0</property>
                                          </packing>
                                        </child>
                                        <child>
                                          <object class="GtkComboBox" id="PictureModulus">
                                            <property name="visible">True</property>
                                            <property name="valign">GTK_ALIGN_CENTER</property>
                                            <property name="can_focus">False</property>
                                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                            <property name="tooltip_text" translatable="yes">Align storage dimensions to multiples of this value.

This setting is only necessary for compatibility with some devices.
You should use 2 unless you experience compatibility issues.</property>
                                            <signal name="changed" handler="scale_changed_cb" swapped="no"/>
                                          </object>
                                          <packing>
                                            <property name="expand">False</property>
                                            <property name="fill">True</property>
                                            <property name="position">1</property>
                                          </packing>
                                        </child>
                                      </object>
                                      <packing>
                                        <property name="expand">False</property>
                                        <property name="fill">True</property>
                                        <property name="position">3</property>
                                      </packing>
                                    </child>
                                  </object>
                                </child>
                                <child type="label">
                                  <object class="GtkLabel" id="label25">
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="label" translatable="yes">&lt;b&gt;Storage Geometry&lt;/b&gt;</property>
                                    <property name="use_markup">True</property>
                                  </object>
                                </child>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">True</property>
                                <property name="padding">2</property>
                                <property name="position">1</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkFrame" id="frame4">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="label_xalign">0</property>
                                <property name="shadow_type">none</property>
                                <child>
                                  <object class="GtkBox" id="vbox10">
                                    <property name="orientation">vertical</property>
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="spacing">2</property>
                                    <child>
                                      <object class="GtkBox" id="hbox52">
                                        <property name="orientation">horizontal</property>
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="spacing">4</property>
                                        <child>
                                          <object class="GtkLabel" id="label91">
                                            <property name="visible">True</property>
                                            <property name="can_focus">False</property>
                                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                            <property name="label" translatable="yes">width:</property>
                                          </object>
                                          <packing>
                                            <property name="expand">False</property>
                                            <property name="fill">True</property>
                                            <property name="position">0</property>
                                          </packing>
                                        </child>
                                        <child>
                                          <object class="GtkSpinButton" id="PictureDisplayWidth">
                                            <property name="width-chars">7</property>
                                            <property name="visible">True</property>
                                            <property name="can_focus">True</property>
                                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                            <property name="tooltip_text" translatable="yes">This is the display width. It is the result of scaling the storage dimensions by the pixel aspect.</property>
                                            <property name="primary_icon_activatable">False</property>
                                            <property name="secondary_icon_activatable">False</property>
                                            <property name="adjustment">adjustment25</property>
                                            <property name="snap_to_ticks">True</property>
                                            <signal name="value-changed" handler="display_width_changed_cb" swapped="no"/>
                                          </object>
                                          <packing>
                                            <property name="expand">False</property>
                                            <property name="fill">True</property>
                                            <property name="position">1</property>
                                          </packing>
                                        </child>
                                        <child>
                                          <object class="GtkLabel" id="label92">
                                            <property name="visible">True</property>
                                            <property name="can_focus">False</property>
                                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                            <property name="label" translatable="yes">height:</property>
                                          </object>
                                          <packing>
                                            <property name="expand">False</property>
                                            <property name="fill">True</property>
                                            <property name="position">2</property>
                                          </packing>
                                        </child>
                                        <child>
                                          <object class="GtkSpinButton" id="PictureDisplayHeight">
                                            <property name="width-chars">7</property>
                                            <property name="visible">True</property>
                                            <property name="can_focus">True</property>
                                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                            <property name="primary_icon_activatable">False</property>
                                            <property name="secondary_icon_activatable">False</property>
                                            <property name="adjustment">adjustment26</property>
                                            <signal name="value-changed" handler="display_height_changed_cb" swapped="no"/>
                                          </object>
                                          <packing>
                                            <property name="expand">False</property>
                                            <property name="fill">True</property>
                                            <property name="position">3</property>
                                          </packing>
                                        </child>
                                      </object>
                                      <packing>
                                        <property name="expand">False</property>
                                        <property name="fill">True</property>
                                        <property name="position">0</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkBox" id="hbox79">
                                        <property name="orientation">horizontal</property>
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="spacing">4</property>
                                        <child>
                                          <object class="GtkLabel" id="label98">
                                            <property name="visible">True</property>
                                            <property name="can_focus">False</property>
                                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                            <property name="label" translatable="yes">Pixel Aspect:</property>
                                          </object>
                                          <packing>
                                            <property name="expand">False</property>
                                            <property name="fill">True</property>
                                            <property name="position">0</property>
                                          </packing>
                                        </child>
                                        <child>
                                          <object class="GtkSpinButton" id="PicturePARWidth">
                                            <property name="width-chars">8</property>
                                            <property name="visible">True</property>
                                            <property name="can_focus">True</property>
                                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                            <property name="tooltip_text" translatable="yes">Pixel aspect defines the shape of the pixels.

A 1:1 ratio defines a square pixel.  Other values define rectangular shapes.
Players will scale the image in order to achieve the specified aspect.</property>
                                            <property name="primary_icon_activatable">False</property>
                                            <property name="secondary_icon_activatable">False</property>
                                            <property name="adjustment">adjustment29</property>
                                            <property name="snap_to_ticks">True</property>
                                            <signal name="value-changed" handler="par_changed_cb" swapped="no"/>
                                          </object>
                                          <packing>
                                            <property name="expand">False</property>
                                            <property name="fill">True</property>
                                            <property name="position">1</property>
                                          </packing>
                                        </child>
                                        <child>
                                          <object class="GtkLabel" id="label99">
                                            <property name="visible">True</property>
                                            <property name="can_focus">False</property>
                                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                            <property name="label" translatable="yes">:</property>
                                          </object>
                                          <packing>
                                            <property name="expand">False</property>
                                            <property name="fill">True</property>
                                            <property name="position">2</property>
                                          </packing>
                                        </child>
                                        <child>
                                          <object class="GtkSpinButton" id="PicturePARHeight">
                                            <property name="width-chars">8</property>
                                            <property name="visible">True</property>
                                            <property name="can_focus">True</property>
                                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                            <property name="tooltip_text" translatable="yes">Pixel aspect defines the shape of the pixels.
A 1:1 ratio defines a square pixel.  Other values define rectangular shapes.
Players will scale the image in order to achieve the specified aspect.</property>
                                            <property name="primary_icon_activatable">False</property>
                                            <property name="secondary_icon_activatable">False</property>
                                            <property name="adjustment">adjustment30</property>
                                            <signal name="value-changed" handler="par_changed_cb" swapped="no"/>
                                          </object>
                                          <packing>
                                            <property name="expand">False</property>
                                            <property name="fill">True</property>
                                            <property name="position">3</property>
                                          </packing>
                                        </child>
                                      </object>
                                      <packing>
                                        <property name="expand">False</property>
                                        <property name="fill">True</property>
                                        <property name="position">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkCheckButton" id="PictureKeepRatio">
                                        <property name="label" translatable="yes">Keep Aspect</property>
                                        <property name="visible">True</property>
                                        <property name="can_focus">True</property>
                                        <property name="receives_default">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="tooltip_text" translatable="yes">If enabled, the original display aspect of the source will be maintained.</property>
                                        <property name="halign">start</property>
                                        <property name="active">True</property>
                                        <property name="draw_indicator">True</property>
                                        <signal name="toggled" handler="scale_changed_cb" swapped="no"/>
                                      </object>
                                      <packing>
                                        <property name="expand">False</property>
                                        <property name="fill">True</property>
                                        <property name="position">2</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkBox" id="hbox53">
                                        <property name="orientation">horizontal</property>
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="spacing">4</property>
                                        <child>
                                          <object class="GtkLabel" id="label93">
                                            <property name="width_request">100</property>
                                            <property name="visible">True</property>
                                            <property name="can_focus">False</property>
                                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                            <property name="halign">start</property>
                                            <property name="label" translatable="yes">Display Aspect:</property>
                                          </object>
                                          <packing>
                                            <property name="expand">False</property>
                                            <property name="fill">True</property>
                                            <property name="position">0</property>
                                          </packing>
                                        </child>
                                        <child>
                                          <object class="GtkLabel" id="display_aspect">
                                            <property name="visible">True</property>
                                            <property name="can_focus">False</property>
                                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                            <property name="label" translatable="yes">--:--</property>
                                          </object>
                                          <packing>
                                            <property name="expand">False</property>
                                            <property name="fill">True</property>
                                            <property name="position">1</property>
                                          </packing>
                                        </child>
                                      </object>
                                      <packing>
                                        <property name="expand">False</property>
                                        <property name="fill">True</property>
                                        <property name="position">3</property>
                                      </packing>
                                    </child>
                                  </object>
                                </child>
                                <child type="label">
                                  <object class="GtkLabel" id="label29">
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="label" translatable="yes">&lt;b&gt;Display Geometry&lt;/b&gt;</property>
                                    <property name="use_markup">True</property>
                                  </object>
                                </child>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">True</property>
                                <property name="padding">2</property>
                                <property name="position">2</property>
                              </packing>
                            </child>
                          </object>
                          <packing>
                            <property name="position">0</property>
                          </packing>
                        </child>
                      </object>
                      <packing>
                        <property name="position">1</property>
                        <property name="name">picture_tab</property>
                        <property name="title" translatable="yes">Dimensions</property>
                      </packing>
                    </child>
                    <child>
])dnl
ifelse(eval(gtk_version < 312), 1, filter_output([
                      <object class="GtkGrid" id="filter_tab">
]), filter_output([
                      <object class="GtkFlowBox" id="filter_tab">
                        <property name="orientation">horizontal</property>
                        <property name="selection-mode">none</property>
]))dnl
filter_output([
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="column-spacing">4</property>
                        <property name="row-spacing">32</property>
                        <property name="margin-top">16</property>
                        <property name="margin-start">16</property>
                        <property name="valign">start</property>
                        <property name="halign">fill</property>
                        <child>
                          <object class="GtkGrid" id="table10">
                            <property name="row-spacing">2</property>
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="column_spacing">5</property>
                            <property name="halign">start</property>
                            <property name="valign">start</property>
                            <child>
                              <object class="GtkLabel" id="label86">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="halign">start</property>
                                <property name="label" translatable="yes">Detelecine:</property>
                              </object>
                              <packing>
                                <property name="top_attach">0</property>
                                <property name="left_attach">0</property>
                                <property name="width">1</property>
                                <property name="height">1</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkComboBox" id="PictureDetelecine">
                                <property name="valign">GTK_ALIGN_CENTER</property>
                                <property name="width_request">100</property>
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="tooltip_text" translatable="yes">This filter removes 'combing' artifacts that are the result of telecining.

Telecining is a process that adjusts film framerates that are 24fps to NTSC video frame rates which are 30fps.</property>
                                <signal name="changed" handler="setting_widget_changed_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="top_attach">0</property>
                                <property name="left_attach">1</property>
                                <property name="width">1</property>
                                <property name="height">1</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkEntry" id="PictureDetelecineCustom">
                                <property name="can_focus">True</property>
                                <property name="tooltip_text" translatable="yes">Custom detelecine filter string format

JunkLeft:JunkRight:JunkTop:JunkBottom:StrictBreaks:MetricPlane:Parity</property>
                                <property name="width_chars">8</property>
                                <property name="primary_icon_activatable">False</property>
                                <property name="secondary_icon_activatable">False</property>
                                <signal name="changed" handler="setting_widget_changed_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="top_attach">1</property>
                                <property name="left_attach">1</property>
                                <property name="width">1</property>
                                <property name="height">1</property>
                              </packing>
                            </child>
                          </object>
])dnl
ifelse(eval(gtk_version < 312), 1, filter_output([
                          <packing>
                            <property name="top_attach">0</property>
                            <property name="left_attach">0</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
]))dnl
filter_output([
                        </child>
                        <child>
                          <object class="GtkGrid" id="comb_detect_grid">
                            <property name="row-spacing">2</property>
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="column_spacing">5</property>
                            <property name="halign">start</property>
                            <property name="valign">start</property>
                            <child>
                              <object class="GtkLabel" id="comb_detect_label">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="halign">start</property>
                                <property name="label" translatable="yes">Interlace Detection:</property>
                              </object>
                              <packing>
                                <property name="top_attach">0</property>
                                <property name="left_attach">0</property>
                                <property name="width">1</property>
                                <property name="height">1</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkComboBox" id="PictureCombDetectPreset">
                                <property name="valign">GTK_ALIGN_CENTER</property>
                                <property name="width_request">100</property>
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="tooltip_text" translatable="yes">This filter detects interlaced frames.

If a deinterlace filter is enabled, only frames that this filter finds
to be interlaced will be deinterlaced.</property>
                                <signal name="changed" handler="comb_detect_widget_changed_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="top_attach">0</property>
                                <property name="left_attach">1</property>
                                <property name="width">1</property>
                                <property name="height">1</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkEntry" id="PictureCombDetectCustom">
                                <property name="can_focus">True</property>
                                <property name="tooltip_text" translatable="yes">Custom interlace detection filter string format

Mode:Spatial Metric:Motion Thresh:Spatial Thresh:Mask Filter Mode:
Block Thresh: Block Width: Block Height</property>
                                <property name="width_chars">8</property>
                                <property name="primary_icon_activatable">False</property>
                                <property name="secondary_icon_activatable">False</property>
                                <signal name="changed" handler="setting_widget_changed_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="top_attach">1</property>
                                <property name="left_attach">1</property>
                                <property name="width">1</property>
                                <property name="height">1</property>
                              </packing>
                            </child>
                          </object>
])dnl
ifelse(eval(gtk_version < 312), 1, filter_output([
                          <packing>
                            <property name="top_attach">0</property>
                            <property name="left_attach">1</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
]))dnl
filter_output([
                        </child>
                        <child>
                          <object class="GtkGrid" id="table14">
                            <property name="row-spacing">2</property>
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="column_spacing">5</property>
                            <property name="halign">start</property>
                            <property name="valign">start</property>
                            <child>
                              <object class="GtkLabel" id="PictureDeinterlaceFilterLabel">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="halign">start</property>
                                <property name="label" translatable="yes">Deinterlace:</property>
                              </object>
                              <packing>
                                <property name="top_attach">1</property>
                                <property name="left_attach">0</property>
                                <property name="width">1</property>
                                <property name="height">1</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkComboBox" id="PictureDeinterlaceFilter">
                                <property name="valign">GTK_ALIGN_CENTER</property>
                                <property name="width_request">100</property>
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="tooltip_text" translatable="yes">Choose decomb or deinterlace filter options.

The decomb filter selectively deinterlaces frames that appear to be interlaced.
This will preserve quality in frames that are not interlaced.

The classic deinterlace filter is applied to all frames.
Frames that are not interlaced will suffer some quality degradation.</property>
                                <signal name="changed" handler="deint_filter_changed_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="top_attach">1</property>
                                <property name="left_attach">1</property>
                                <property name="width">1</property>
                                <property name="height">1</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkLabel" id="PictureDeinterlacePresetLabel">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="halign">start</property>
                                <property name="label" translatable="yes">Deinterlace Preset:</property>
                              </object>
                              <packing>
                                <property name="top_attach">2</property>
                                <property name="left_attach">0</property>
                                <property name="width">1</property>
                                <property name="height">1</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkComboBox" id="PictureDeinterlacePreset">
                                <property name="valign">GTK_ALIGN_CENTER</property>
                                <property name="width_request">100</property>
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="tooltip_text" translatable="yes"> The decomb filter selectively deinterlaces frames that appear to be interlaced.
This will preserve quality in frames that are not interlaced.

The classic deinterlace filter is applied to all frames.
Frames that are not interlaced will suffer some quality degradation.</property>
                                <signal name="changed" handler="setting_widget_changed_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="top_attach">2</property>
                                <property name="left_attach">1</property>
                                <property name="width">1</property>
                                <property name="height">1</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkEntry" id="PictureDeinterlaceCustom">
                                <property name="can_focus">True</property>
                                <property name="tooltip_text" translatable="yes">Custom denoise filter string format

SpatialLuma:SpatialChroma:TemporalLuma:TemporalChroma</property>
                                <property name="width_chars">8</property>
                                <property name="primary_icon_activatable">False</property>
                                <property name="secondary_icon_activatable">False</property>
                                <signal name="changed" handler="setting_widget_changed_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="top_attach">3</property>
                                <property name="left_attach">1</property>
                                <property name="width">1</property>
                                <property name="height">1</property>
                              </packing>
                            </child>
                          </object>
])dnl
ifelse(eval(gtk_version < 312), 1, filter_output([
                          <packing>
                            <property name="top_attach">0</property>
                            <property name="left_attach">2</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
]))dnl
filter_output([
                        </child>
                        <child>
                          <object class="GtkGrid" id="table90">
                            <property name="row-spacing">2</property>
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="column_spacing">5</property>
                            <property name="halign">start</property>
                            <property name="valign">start</property>
                            <child>
                              <object class="GtkLabel" id="label41">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="halign">start</property>
                                <property name="label" translatable="yes">Deblock:</property>
                              </object>
                              <packing>
                                <property name="top_attach">0</property>
                                <property name="left_attach">0</property>
                                <property name="width">1</property>
                                <property name="height">1</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkScale" id="PictureDeblock">
                                <property name="visible">True</property>
                                <property name="width_request">100</property>
                                <property name="can_focus">True</property>
                                <property name="tooltip_text" translatable="yes">The deblocking filter removes a common type of compression artifact.
If your source exhibits 'blockiness', this filter may help clean it up.</property>
                                <property name="adjustment">adjustment20</property>
                                <property name="digits">0</property>
                                <property name="value_pos">right</property>
                                <signal name="format-value" handler="format_deblock_cb" swapped="no"/>
                                <signal name="value-changed" handler="setting_widget_changed_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="top_attach">0</property>
                                <property name="left_attach">1</property>
                                <property name="width">1</property>
                                <property name="height">1</property>
                              </packing>
                            </child>
                          </object>
])dnl
ifelse(eval(gtk_version < 312), 1, filter_output([
                          <packing>
                            <property name="top_attach">1</property>
                            <property name="left_attach">0</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
]))dnl
filter_output([
                        </child>
                        <child>
                          <object class="GtkGrid" id="table1">
                            <property name="row-spacing">2</property>
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="column_spacing">5</property>
                            <property name="halign">start</property>
                            <property name="valign">start</property>
                            <child>
                              <object class="GtkLabel" id="label32">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="halign">start</property>
                                <property name="label" translatable="yes">Denoise Filter:</property>
                              </object>
                              <packing>
                                <property name="top_attach">1</property>
                                <property name="left_attach">0</property>
                                <property name="width">1</property>
                                <property name="height">1</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkComboBox" id="PictureDenoiseFilter">
                                <property name="valign">GTK_ALIGN_CENTER</property>
                                <property name="width_request">100</property>
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="tooltip_text" translatable="yes">Denoise filtering reduces or removes the appearance of noise and grain.
Film grain and other types of high frequency noise are difficult to compress.
Using this filter on such sources can result in smaller file sizes.</property>
                                <signal name="changed" handler="setting_widget_changed_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="top_attach">1</property>
                                <property name="left_attach">1</property>
                                <property name="width">1</property>
                                <property name="height">1</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkLabel" id="PictureDenoisePresetLabel">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="halign">start</property>
                                <property name="label" translatable="yes">Denoise Preset:</property>
                              </object>
                              <packing>
                                <property name="top_attach">2</property>
                                <property name="left_attach">0</property>
                                <property name="width">1</property>
                                <property name="height">1</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkComboBox" id="PictureDenoisePreset">
                                <property name="valign">GTK_ALIGN_CENTER</property>
                                <property name="width_request">100</property>
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="tooltip_text" translatable="yes">Denoise filtering reduces or removes the appearance of noise and grain.
Film grain and other types of high frequency noise are difficult to compress.
Using this filter on such sources can result in smaller file sizes.</property>
                                <signal name="changed" handler="setting_widget_changed_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="top_attach">2</property>
                                <property name="left_attach">1</property>
                                <property name="width">1</property>
                                <property name="height">1</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkLabel" id="PictureDenoiseTuneLabel">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="halign">start</property>
                                <property name="label" translatable="yes">Denoise Tune:</property>
                              </object>
                              <packing>
                                <property name="top_attach">3</property>
                                <property name="left_attach">0</property>
                                <property name="width">1</property>
                                <property name="height">1</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkComboBox" id="PictureDenoiseTune">
                                <property name="valign">GTK_ALIGN_CENTER</property>
                                <property name="width_request">100</property>
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="tooltip_text" translatable="yes">Denoise filtering reduces or removes the appearance of noise and grain.
Film grain and other types of high frequency noise are difficult to compress.
Using this filter on such sources can result in smaller file sizes.</property>
                                <signal name="changed" handler="setting_widget_changed_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="top_attach">3</property>
                                <property name="left_attach">1</property>
                                <property name="width">1</property>
                                <property name="height">1</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkEntry" id="PictureDenoiseCustom">
                                <property name="can_focus">True</property>
                                <property name="tooltip_text" translatable="yes">Custom denoise filter string format

SpatialLuma:SpatialChroma:TemporalLuma:TemporalChroma</property>
                                <property name="width_chars">8</property>
                                <property name="primary_icon_activatable">False</property>
                                <property name="secondary_icon_activatable">False</property>
                                <signal name="changed" handler="setting_widget_changed_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="top_attach">3</property>
                                <property name="left_attach">1</property>
                                <property name="width">1</property>
                                <property name="height">1</property>
                              </packing>
                            </child>
                          </object>
])dnl
ifelse(eval(gtk_version < 312), 1, filter_output([
                          <packing>
                            <property name="top_attach">1</property>
                            <property name="left_attach">1</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
]))dnl
filter_output([
                        </child>
                        <child>
                          <object class="GtkGrid" id="table16">
                            <property name="row-spacing">2</property>
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="column_spacing">5</property>
                            <property name="halign">start</property>
                            <property name="valign">start</property>
                            <child>
                              <object class="GtkLabel" id="PictureRotateLabel">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="halign">start</property>
                                <property name="label" translatable="yes">Rotate Filter:</property>
                              </object>
                              <packing>
                                <property name="top_attach">1</property>
                                <property name="left_attach">0</property>
                                <property name="width">1</property>
                                <property name="height">1</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkComboBox" id="PictureRotate">
                                <property name="valign">GTK_ALIGN_CENTER</property>
                                <property name="width_request">100</property>
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="tooltip_text" translatable="yes">Rotate the video clockwise in 90 degree increments.</property>
                                <signal name="changed" handler="setting_widget_changed_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="top_attach">1</property>
                                <property name="left_attach">1</property>
                                <property name="width">1</property>
                                <property name="height">1</property>
                              </packing>
                            </child>
                          </object>
])dnl
ifelse(eval(gtk_version < 312), 1, filter_output([
                          <packing>
                            <property name="top_attach">1</property>
                            <property name="left_attach">2</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
]))dnl
filter_output([
                        </child>
                        <child>
                          <object class="GtkCheckButton" id="VideoGrayScale">
                            <property name="label" translatable="yes">Grayscale</property>
                            <property name="visible">True</property>
                            <property name="can_focus">True</property>
                            <property name="receives_default">False</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="tooltip_text" translatable="yes">If enabled, filter colour components out of video.</property>
                            <property name="halign">start</property>
                            <property name="valign">start</property>
                            <property name="draw_indicator">True</property>
                            <signal name="toggled" handler="setting_widget_changed_cb" swapped="no"/>
                          </object>
])dnl
ifelse(eval(gtk_version < 312), 1, filter_output([
                          <packing>
                            <property name="top_attach">1</property>
                            <property name="left_attach">3</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
]))dnl
filter_output([
                        </child>
                      </object>
                      <packing>
                        <property name="position">2</property>
                        <property name="name">filter_tab</property>
                        <property name="title" translatable="yes">Filters</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkBox" id="video_tab">
                        <property name="orientation">vertical</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                        <property name="spacing">0</property>
                        <child>
                          <object class="GtkBox" id="hbox17">
                            <property name="orientation">horizontal</property>
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="spacing">48</property>
                            <child>
                              <object class="GtkGrid" id="table15">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="column_spacing">5</property>
                                <property name="row-spacing">2</property>
                                <property name="margin-top">12</property>
                                <property name="margin-start">24</property>
                                <child>
                                  <object class="GtkLabel" id="label46">
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="halign">start</property>
                                    <property name="label" translatable="yes">Video Encoder:</property>
                                  </object>
                                  <packing>
                                    <property name="top_attach">0</property>
                                    <property name="left_attach">0</property>
                                    <property name="width">1</property>
                                    <property name="height">1</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkComboBox" id="VideoEncoder">
                                    <property name="visible">True</property>
                                    <property name="valign">GTK_ALIGN_CENTER</property>
                                    <property name="can_focus">False</property>
                                    <property name="tooltip_text" translatable="yes">Available video encoders.</property>
                                    <signal name="changed" handler="vcodec_changed_cb" swapped="no"/>
                                  </object>
                                  <packing>
                                    <property name="top_attach">0</property>
                                    <property name="left_attach">1</property>
                                    <property name="width">1</property>
                                    <property name="height">1</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkLabel" id="label47">
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="halign">start</property>
                                    <property name="label" translatable="yes">Framerate:</property>
                                  </object>
                                  <packing>
                                    <property name="top_attach">1</property>
                                    <property name="left_attach">0</property>
                                    <property name="width">1</property>
                                    <property name="height">1</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkComboBox" id="VideoFramerate">
                                    <property name="visible">True</property>
                                    <property name="valign">GTK_ALIGN_CENTER</property>
                                    <property name="can_focus">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="tooltip_text" translatable="yes">Output framerate.

'Same as source' is recommended. If your source video has
a variable framerate, 'Same as source' will preserve it.</property>
                                    <signal name="changed" handler="framerate_changed_cb" swapped="no"/>
                                  </object>
                                  <packing>
                                    <property name="top_attach">1</property>
                                    <property name="left_attach">1</property>
                                    <property name="width">1</property>
                                    <property name="height">1</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkRadioButton" id="VideoFramerateCFR">
                                    <property name="label" translatable="yes">Constant Framerate</property>
                                    <property name="visible">True</property>
                                    <property name="can_focus">True</property>
                                    <property name="receives_default">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="tooltip_text" translatable="yes">Enables constant framerate output.</property>
                                    <property name="halign">start</property>
                                    <property name="draw_indicator">True</property>
                                    <signal name="toggled" handler="setting_widget_changed_cb" swapped="no"/>
                                  </object>
                                  <packing>
                                    <property name="top_attach">2</property>
                                    <property name="left_attach">0</property>
                                    <property name="width">2</property>
                                    <property name="height">1</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkRadioButton" id="VideoFrameratePFR">
                                    <property name="label" translatable="yes">Peak Framerate (VFR)</property>
                                    <property name="visible">True</property>
                                    <property name="can_focus">True</property>
                                    <property name="receives_default">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="tooltip_text" translatable="yes">Enables variable framerate output with a peak
rate determined by the framerate setting.

VFR is not compatible with some players.</property>
                                    <property name="halign">start</property>
                                    <property name="draw_indicator">True</property>
                                    <property name="group">VideoFramerateCFR</property>
                                    <signal name="toggled" handler="setting_widget_changed_cb" swapped="no"/>
                                  </object>
                                  <packing>
                                    <property name="top_attach">3</property>
                                    <property name="left_attach">0</property>
                                    <property name="width">2</property>
                                    <property name="height">1</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkRadioButton" id="VideoFramerateVFR">
                                    <property name="label" translatable="yes">Variable Framerate</property>
                                    <property name="visible">True</property>
                                    <property name="can_focus">True</property>
                                    <property name="receives_default">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="tooltip_text" translatable="yes">Enables variable framerate output.

VFR is not compatible with some players.</property>
                                    <property name="halign">start</property>
                                    <property name="draw_indicator">True</property>
                                    <property name="group">VideoFramerateCFR</property>
                                    <signal name="toggled" handler="setting_widget_changed_cb" swapped="no"/>
                                  </object>
                                  <packing>
                                    <property name="top_attach">3</property>
                                    <property name="left_attach">0</property>
                                    <property name="width">2</property>
                                    <property name="height">1</property>
                                  </packing>
                                </child>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">True</property>
                                <property name="position">0</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkGrid" id="table8">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="column_spacing">5</property>
                                <property name="row-spacing">2</property>
                                <property name="margin-top">12</property>
                                <property name="margin-end">24</property>
                                <child>
                                  <object class="GtkScale" id="VideoQualitySlider">
                                    <property name="visible">True</property>
                                    <property name="can_focus">True</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="tooltip_text" translatable="yes">Set the desired quality factor.
The encoder targets a certain quality.
The scale used by each video encoder is different.

x264's scale is logarithmic and lower values correspond to higher quality.
So small decreases in value will result in progressively larger increases
in the resulting file size.  A value of 0 means lossless and will result
in a file size that is larger than the original source, unless the source
was also lossless.

FFMpeg's and Theora's scale is more linear.
These encoders do not have a lossless mode.</property>
                                    <property name="adjustment">adjustment5</property>
                                    <property name="digits">3</property>
                                    <property name="hexpand">True</property>
                                    <signal name="format-value" handler="format_vquality_cb" swapped="no"/>
                                    <signal name="value-changed" handler="vquality_changed_cb" swapped="no"/>
                                  </object>
                                  <packing>
                                    <property name="top_attach">0</property>
                                    <property name="left_attach">0</property>
                                    <property name="width">3</property>
                                    <property name="height">1</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkRadioButton" id="vquality_type_constant">
                                    <property name="label" translatable="yes">Constant Quality:</property>
                                    <property name="visible">True</property>
                                    <property name="can_focus">True</property>
                                    <property name="receives_default">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="tooltip_text" translatable="yes">Set the desired quality factor.
The encoder targets a certain quality.
The scale used by each video encoder is different.

x264's scale is logarithmic and lower values correspond to higher quality.
So small decreases in value will result in progressively larger increases
in the resulting file size.  A value of 0 means lossless and will result
in a file size that is larger than the original source, unless the source
was also lossless.

FFMpeg's and Theora's scale is more linear.
These encoders do not have a lossless mode.</property>
                                    <property name="halign">start</property>
                                    <property name="active">True</property>
                                    <property name="draw_indicator">True</property>
                                    <signal name="toggled" handler="vquality_type_changed_cb" swapped="no"/>
                                  </object>
                                  <packing>
                                    <property name="top_attach">1</property>
                                    <property name="left_attach">0</property>
                                    <property name="width">1</property>
                                    <property name="height">1</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkRadioButton" id="vquality_type_bitrate">
                                    <property name="label" translatable="yes">Bitrate (kbps):    </property>
                                    <property name="visible">True</property>
                                    <property name="can_focus">True</property>
                                    <property name="receives_default">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="tooltip_text" translatable="yes">Set the average bitrate.

The instantaneous bitrate can be much higher or lower at any point in time.
But the average over a long duration will be the value set here.  If you need
to limit instantaneous bitrate, look into x264's vbv-bufsize and vbv-maxrate settings.</property>
                                    <property name="halign">start</property>
                                    <property name="draw_indicator">True</property>
                                    <property name="group">vquality_type_constant</property>
                                    <signal name="toggled" handler="vquality_type_changed_cb" swapped="no"/>
                                  </object>
                                  <packing>
                                    <property name="top_attach">2</property>
                                    <property name="left_attach">0</property>
                                    <property name="width">1</property>
                                    <property name="height">1</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkSpinButton" id="VideoAvgBitrate">
                                    <property name="visible">True</property>
                                    <property name="can_focus">True</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="tooltip_text" translatable="yes">Set the average bitrate.

The instantaneous bitrate can be much higher or lower at any point in time.
But the average over a long duration will be the value set here.  If you need
to limit instantaneous bitrate, look into x264's vbv-bufsize and vbv-maxrate settings.</property>
                                    <property name="primary_icon_activatable">False</property>
                                    <property name="secondary_icon_activatable">False</property>
                                    <property name="adjustment">adjustment3</property>
                                    <signal name="value-changed" handler="vbitrate_changed_cb" swapped="no"/>
                                  </object>
                                  <packing>
                                    <property name="top_attach">2</property>
                                    <property name="left_attach">1</property>
                                    <property name="width">1</property>
                                    <property name="height">1</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkCheckButton" id="VideoTwoPass">
                                    <property name="label" translatable="yes">2-Pass Encoding</property>
                                    <property name="visible">True</property>
                                    <property name="can_focus">True</property>
                                    <property name="receives_default">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="tooltip_text" translatable="yes">Perform 2 Pass Encoding.

The 'Bitrate' option is prerequisite. During the 1st pass, statistics about
the video are collected.  Then in the second pass, those statistics are used
to make bitrate allocation decisions.</property>
                                    <property name="halign">start</property>
                                    <property name="draw_indicator">True</property>
                                    <signal name="toggled" handler="setting_widget_changed_cb" swapped="no"/>
                                  </object>
                                  <packing>
                                    <property name="top_attach">3</property>
                                    <property name="left_attach">0</property>
                                    <property name="width">1</property>
                                    <property name="height">1</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkCheckButton" id="VideoTurboTwoPass">
                                    <property name="label" translatable="yes">Turbo First Pass</property>
                                    <property name="visible">True</property>
                                    <property name="can_focus">True</property>
                                    <property name="receives_default">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="tooltip_text" translatable="yes">During the 1st pass of a 2 pass encode, use settings that speed things along.</property>
                                    <property name="halign">start</property>
                                    <property name="active">True</property>
                                    <property name="draw_indicator">True</property>
                                    <signal name="toggled" handler="setting_widget_changed_cb" swapped="no"/>
                                  </object>
                                  <packing>
                                    <property name="top_attach">3</property>
                                    <property name="left_attach">1</property>
                                    <property name="width">1</property>
                                    <property name="height">1</property>
                                  </packing>
                                </child>
                              </object>
                              <packing>
                                <property name="expand">True</property>
                                <property name="fill">True</property>
                                <property name="padding">2</property>
                                <property name="position">1</property>
                              </packing>
                            </child>
                          </object>
                          <packing>
                            <property name="expand">False</property>
                            <property name="fill">True</property>
                            <property name="padding">0</property>
                            <property name="position">0</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkBox" id="VideoSettings">
                            <property name="orientation">vertical</property>
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="margin-start">24</property>
                            <property name="margin-end">24</property>
                            <child>
                              <object class="GtkCheckButton" id="x264UseAdvancedOptions">
                                <property name="label" translatable="yes">Use Advanced Options</property>
                                <property name="visible">True</property>
                                <property name="can_focus">True</property>
                                <property name="receives_default">False</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="tooltip_text" translatable="yes">Use advanced options Tab for x264 settings.

Use at your own risk!</property>
                                <property name="halign">start</property>
                                <property name="draw_indicator">True</property>
                                <signal name="toggled" handler="x264_use_advanced_options_changed_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">True</property>
                                <property name="padding">2</property>
                                <property name="position">0</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkGrid" id="VideoSettingsTable">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="column_spacing">5</property>
                                <property name="row-spacing">2</property>
                                <child>
                                  <object class="GtkLabel" id="VideoPresetLabel">
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="halign">start</property>
                                    <property name="label" translatable="yes">Preset:</property>
                                  </object>
                                  <packing>
                                    <property name="top_attach">0</property>
                                    <property name="left_attach">0</property>
                                    <property name="width">1</property>
                                    <property name="height">1</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkScale" id="VideoPresetSlider">
                                    <property name="visible">True</property>
                                    <property name="can_focus">True</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="tooltip_text" translatable="yes">Adjusts encoder settings to trade off compression efficiency against encoding speed.

This establishes your default encoder settings.
Tunes, profiles, levels and advanced option string will be applied to this.
You should generally set this option to the slowest you can bear since slower
settings will result in better quality or smaller files.</property>
                                    <property name="adjustment">VideoPresetRange</property>
                                    <property name="digits">0</property>
                                    <property name="value_pos">right</property>
                                    <property name="hexpand">True</property>
                                    <signal name="format-value" handler="format_video_preset_cb" swapped="no"/>
                                    <signal name="value-changed" handler="video_setting_changed_cb" swapped="no"/>
                                  </object>
                                  <packing>
                                    <property name="top_attach">0</property>
                                    <property name="left_attach">1</property>
                                    <property name="width">5</property>
                                    <property name="height">1</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkLabel" id="VideoTuneLabel">
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="halign">start</property>
                                    <property name="label" translatable="yes">Tune:</property>
                                    <property name="margin_top">8</property>
                                    <property name="margin_bottom">8</property>
                                  </object>
                                  <packing>
                                    <property name="top_attach">1</property>
                                    <property name="left_attach">0</property>
                                    <property name="width">1</property>
                                    <property name="height">1</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkComboBox" id="VideoTune">
                                    <property name="visible">True</property>
                                    <property name="valign">GTK_ALIGN_CENTER</property>
                                    <property name="can_focus">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="tooltip_text" translatable="yes">Tune settings to optimize for common scenarios.

This can improve effeciency for particular source characteristics or set
characteristics of the output file.  Changes will be applied after the
preset but before all other parameters.</property>
                                    <signal name="changed" handler="video_setting_changed_cb" swapped="no"/>
                                  </object>
                                  <packing>
                                    <property name="top_attach">1</property>
                                    <property name="left_attach">1</property>
                                    <property name="width">1</property>
                                    <property name="height">1</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkCheckButton" id="x264FastDecode">
                                    <property name="label" translatable="yes">Fast Decode</property>
                                    <property name="visible">True</property>
                                    <property name="can_focus">True</property>
                                    <property name="receives_default">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="tooltip_text" translatable="yes">Reduce decoder CPU usage.

Set this if your device is struggling to play the output (dropped frames).</property>
                                    <property name="halign">start</property>
                                    <property name="margin-start">2</property>
                                    <property name="draw_indicator">True</property>
                                    <signal name="toggled" handler="video_setting_changed_cb" swapped="no"/>
                                  </object>
                                  <packing>
                                    <property name="top_attach">1</property>
                                    <property name="left_attach">2</property>
                                    <property name="width">1</property>
                                    <property name="height">1</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkCheckButton" id="x264ZeroLatency">
                                    <property name="visible">False</property>
                                    <property name="label" translatable="yes">Zero Latency</property>
                                    <property name="can_focus">True</property>
                                    <property name="receives_default">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="tooltip_text" translatable="yes">Minimize latency between input to encoder and output of decoder.

This is useful for broadcast of live streams.

Since HandBrake is not suitable for live stream broadcast purposes,
this setting is of little value here.</property>
                                    <property name="halign">start</property>
                                    <property name="margin-start">2</property>
                                    <property name="draw_indicator">True</property>
                                    <signal name="toggled" handler="video_setting_changed_cb" swapped="no"/>
                                  </object>
                                  <packing>
                                    <property name="top_attach">1</property>
                                    <property name="left_attach">3</property>
                                    <property name="width">1</property>
                                    <property name="height">1</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkLabel" id="VideoProfileLabel">
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="halign">start</property>
                                    <property name="label" translatable="yes">Profile:</property>
                                    <property name="margin_top">8</property>
                                    <property name="margin_bottom">8</property>
                                  </object>
                                  <packing>
                                    <property name="top_attach">2</property>
                                    <property name="left_attach">0</property>
                                    <property name="width">1</property>
                                    <property name="height">1</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkComboBox" id="VideoProfile">
                                    <property name="visible">True</property>
                                    <property name="valign">GTK_ALIGN_CENTER</property>
                                    <property name="can_focus">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="tooltip_text" translatable="yes">Sets and ensures compliance with the specified profile.

Overrides all other settings.</property>
                                    <signal name="changed" handler="video_setting_changed_cb" swapped="no"/>
                                  </object>
                                  <packing>
                                    <property name="top_attach">2</property>
                                    <property name="left_attach">1</property>
                                    <property name="width">1</property>
                                    <property name="height">1</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkLabel" id="VideoLevelLabel">
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="halign">start</property>
                                    <property name="label" translatable="yes">Level:</property>
                                    <property name="margin_top">8</property>
                                    <property name="margin_bottom">8</property>
                                  </object>
                                  <packing>
                                    <property name="top_attach">3</property>
                                    <property name="left_attach">0</property>
                                    <property name="width">1</property>
                                    <property name="height">1</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkComboBox" id="VideoLevel">
                                    <property name="visible">True</property>
                                    <property name="valign">GTK_ALIGN_CENTER</property>
                                    <property name="can_focus">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="tooltip_text" translatable="yes">Sets and ensures compliance with the specified level.

Overrides all other settings.</property>
                                    <signal name="changed" handler="video_setting_changed_cb" swapped="no"/>
                                  </object>
                                  <packing>
                                    <property name="top_attach">3</property>
                                    <property name="left_attach">1</property>
                                    <property name="width">1</property>
                                    <property name="height">1</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkBox" id="hbox43">
                                    <property name="orientation">horizontal</property>
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="spacing">5</property>
                                    <child>
                                      <object class="GtkLabel" id="VideoOptionExtraLabel">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="halign">start</property>
                                        <property name="label" translatable="yes">More Settings:</property>
                                      </object>
                                      <packing>
                                        <property name="expand">False</property>
                                        <property name="fill">True</property>
                                        <property name="padding">5</property>
                                        <property name="position">0</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkScrolledWindow" id="VideoOptionExtraWindow">
                                        <property name="visible">True</property>
                                        <property name="can_focus">True</property>
                                        <property name="shadow_type">etched-in</property>
                                        <property name="hexpand">True</property>
                                        <child>
                                          <object class="GtkTextView" id="VideoOptionExtra">
                                            <property name="visible">True</property>
                                            <property name="can_focus">True</property>
                                            <property name="tooltip_text" translatable="yes">Additional encoder settings.

Colon separated list of encoder options.</property>
                                            <property name="wrap_mode">char</property>
                                            <property name="accepts_tab">False</property>
                                          </object>
                                        </child>
                                      </object>
                                      <packing>
                                        <property name="expand">True</property>
                                        <property name="fill">True</property>
                                        <property name="position">1</property>
                                      </packing>
                                    </child>
                                  </object>
                                  <packing>
                                    <property name="top_attach">2</property>
                                    <property name="left_attach">2</property>
                                    <property name="width">4</property>
                                    <property name="height">2</property>
                                  </packing>
                                </child>
                              </object>
                              <packing>
                                <property name="expand">True</property>
                                <property name="fill">True</property>
                                <property name="padding">0</property>
                                <property name="position">1</property>
                              </packing>
                            </child>
                          </object>
                          <packing>
                            <property name="expand">True</property>
                            <property name="fill">True</property>
                            <property name="padding">2</property>
                            <property name="position">1</property>
                          </packing>
                        </child>
                      </object>
                      <packing>
                        <property name="position">3</property>
                        <property name="name">video_tab</property>
                        <property name="title" translatable="yes">Video</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkBox" id="audio_defaults_tab">
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="orientation">vertical</property>
                        <property name="margin-start">12</property>
                        <property name="margin-end">12</property>
                        <property name="margin_top">12</property>
                        <property name="margin_bottom">12</property>
                        <property name="hexpand">True</property>
                        <child>
                          <object class="GtkBox" id="audio_defaults_box1">
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="orientation">horizontal</property>
                            <property name="spacing">6</property>
                            <child>
                              <object class="GtkBox" id="audio_defaults_box2">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="orientation">vertical</property>
                                <child>
                                  <object class="GtkGrid" id="grid2">
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="column_spacing">5</property>
                                    <property name="row-spacing">2</property>
                                    <child>
                                      <object class="GtkLabel" id="label4">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="halign">end</property>
                                        <property name="label" translatable="yes">Selection Behavior:</property>
                                        <property name="justify">right</property>
                                      </object>
                                      <packing>
                                        <property name="left_attach">0</property>
                                        <property name="top_attach">0</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkComboBox" id="AudioTrackSelectionBehavior">
                                        <property name="visible">True</property>
                                        <property name="valign">GTK_ALIGN_CENTER</property>
                                        <property name="can_focus">False</property>
                                        <signal name="changed" handler="audio_def_widget_changed_cb" swapped="no"/>
                                      </object>
                                      <packing>
                                        <property name="left_attach">1</property>
                                        <property name="top_attach">0</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                  </object>
                                  <packing>
                                    <property name="fill">True</property>
                                    <property name="position">0</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkGrid" id="grid3">
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="column_spacing">5</property>
                                    <property name="row-spacing">2</property>
                                    <property name="halign">GTK_ALIGN_END</property>
                                    <property name="margin_top">6</property>
                                    <property name="margin_bottom">6</property>
                                    <child>
                                      <object class="GtkScrolledWindow" id="scrolledwindow10">
                                        <property name="visible">True</property>
                                        <property name="can_focus">True</property>
                                        <property name="hscrollbar_policy">GTK_POLICY_NEVER</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="min_content_height">84</property>
                                        <child>
                                          <object class="GtkListBox" id="audio_avail_lang">
                                            <property name="visible">True</property>
                                            <property name="can_focus">False</property>
                                          </object>
                                        </child>
                                      </object>
                                      <packing>
                                        <property name="left_attach">0</property>
                                        <property name="top_attach">1</property>
                                        <property name="width">1</property>
                                        <property name="height">4</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkScrolledWindow" id="scrolledwindow11">
                                        <property name="visible">True</property>
                                        <property name="can_focus">True</property>
                                        <property name="hscrollbar_policy">GTK_POLICY_NEVER</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <child>
                                          <object class="GtkListBox" id="audio_selected_lang">
                                            <property name="visible">True</property>
                                            <property name="can_focus">False</property>
                                          </object>
                                        </child>
                                      </object>
                                      <packing>
                                        <property name="left_attach">2</property>
                                        <property name="top_attach">1</property>
                                        <property name="width">1</property>
                                        <property name="height">4</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkButton" id="audio_lang_add">
                                        <property name="label" translatable="yes">Add</property>
                                        <property name="visible">True</property>
                                        <property name="can_focus">True</property>
                                        <property name="receives_default">True</property>
                                        <property name="valign">GTK_ALIGN_CENTER</property>
                                        <signal name="clicked" handler="audio_add_lang_clicked_cb" swapped="no"/>
                                      </object>
                                      <packing>
                                        <property name="left_attach">1</property>
                                        <property name="top_attach">2</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkButton" id="audio_lang_remove">
                                        <property name="label" translatable="yes">Remove</property>
                                        <property name="visible">True</property>
                                        <property name="can_focus">True</property>
                                        <property name="receives_default">True</property>
                                        <property name="valign">GTK_ALIGN_CENTER</property>
                                        <signal name="clicked" handler="audio_remove_lang_clicked_cb" swapped="no"/>
                                      </object>
                                      <packing>
                                        <property name="left_attach">1</property>
                                        <property name="top_attach">3</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkLabel" id="label8">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="label" translatable="yes">Available Languages</property>
                                      </object>
                                      <packing>
                                        <property name="left_attach">0</property>
                                        <property name="top_attach">0</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkLabel" id="label24">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="label" translatable="yes">Selected Languages</property>
                                      </object>
                                      <packing>
                                        <property name="left_attach">2</property>
                                        <property name="top_attach">0</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                  </object>
                                  <packing>
                                    <property name="expand">True</property>
                                    <property name="fill">True</property>
                                    <property name="position">1</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkCheckButton" id="AudioSecondaryEncoderMode">
                                    <property name="label" translatable="yes">Use only first encoder for secondary audio</property>
                                    <property name="visible">True</property>
                                    <property name="can_focus">True</property>
                                    <property name="receives_default">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="tooltip_text" translatable="yes">Only the primary audio track will be encoded with the full encoder list.
All other secondary audio output tracks will be encoded with first encoder only.</property>
                                    <property name="halign">start</property>
                                    <property name="active">True</property>
                                    <property name="draw_indicator">True</property>
                                    <signal name="toggled" handler="audio_def_widget_changed_cb" swapped="no"/>
                                  </object>
                                  <packing>
                                    <property name="position">2</property>
                                  </packing>
                                </child>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">True</property>
                                <property name="position">0</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkBox" id="auto_pass_box">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="orientation">vertical</property>
                                <property name="margin-start">6</property>
                                <property name="spacing">2</property>
                                <child>
                                  <object class="GtkGrid" id="grid4">
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="column_spacing">5</property>
                                    <property name="row-spacing">2</property>
                                    <property name="halign">end</property>
                                    <child>
                                      <object class="GtkLabel" id="labela3">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="halign">start</property>
                                        <property name="label" translatable="yes">Auto Passthru:</property>
                                      </object>
                                      <packing>
                                        <property name="left_attach">0</property>
                                        <property name="top_attach">0</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkCheckButton" id="AudioAllowMP3Pass">
                                        <property name="label" translatable="yes">MP3</property>
                                        <property name="visible">True</property>
                                        <property name="can_focus">True</property>
                                        <property name="receives_default">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="tooltip_text" translatable="yes">Enable this if your playback device supports MP3.
This permits MP3 passthru to be selected when automatic passthru selection is enabled.</property>
                                        <property name="halign">start</property>
                                        <property name="active">True</property>
                                        <property name="draw_indicator">True</property>
                                        <signal name="toggled" handler="audio_passthru_widget_changed_cb" swapped="no"/>
                                      </object>
                                      <packing>
                                        <property name="left_attach">1</property>
                                        <property name="top_attach">0</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkCheckButton" id="AudioAllowAACPass">
                                        <property name="label" translatable="yes">AAC</property>
                                        <property name="visible">True</property>
                                        <property name="can_focus">True</property>
                                        <property name="receives_default">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="tooltip_text" translatable="yes">Enable this if your playback device supports AAC.
This permits AAC passthru to be selected when automatic passthru selection is enabled.</property>
                                        <property name="halign">start</property>
                                        <property name="active">True</property>
                                        <property name="draw_indicator">True</property>
                                        <signal name="toggled" handler="audio_passthru_widget_changed_cb" swapped="no"/>
                                      </object>
                                      <packing>
                                        <property name="left_attach">2</property>
                                        <property name="top_attach">0</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkCheckButton" id="AudioAllowAC3Pass">
                                        <property name="label" translatable="yes">AC-3</property>
                                        <property name="visible">True</property>
                                        <property name="can_focus">True</property>
                                        <property name="receives_default">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="tooltip_text" translatable="yes">Enable this if your playback device supports AC-3.
This permits AC-3 passthru to be selected when automatic passthru selection is enabled.</property>
                                        <property name="halign">start</property>
                                        <property name="active">True</property>
                                        <property name="draw_indicator">True</property>
                                        <signal name="toggled" handler="audio_passthru_widget_changed_cb" swapped="no"/>
                                      </object>
                                      <packing>
                                        <property name="left_attach">1</property>
                                        <property name="top_attach">1</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkCheckButton" id="AudioAllowDTSPass">
                                        <property name="label" translatable="yes">DTS</property>
                                        <property name="visible">True</property>
                                        <property name="can_focus">True</property>
                                        <property name="receives_default">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="tooltip_text" translatable="yes">Enable this if your playback device supports DTS.
This permits DTS passthru to be selected when automatic passthru selection is enabled.</property>
                                        <property name="halign">start</property>
                                        <property name="active">True</property>
                                        <property name="draw_indicator">True</property>
                                        <signal name="toggled" handler="audio_passthru_widget_changed_cb" swapped="no"/>
                                      </object>
                                      <packing>
                                        <property name="left_attach">1</property>
                                        <property name="top_attach">2</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkCheckButton" id="AudioAllowDTSHDPass">
                                        <property name="label" translatable="yes">DTS-HD</property>
                                        <property name="visible">True</property>
                                        <property name="can_focus">True</property>
                                        <property name="receives_default">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="tooltip_text" translatable="yes">Enable this if your playback device supports DTS-HD.
This permits DTS-HD passthru to be selected when automatic passthru selection is enabled.</property>
                                        <property name="halign">start</property>
                                        <property name="active">True</property>
                                        <property name="draw_indicator">True</property>
                                        <signal name="toggled" handler="audio_passthru_widget_changed_cb" swapped="no"/>
                                      </object>
                                      <packing>
                                        <property name="left_attach">2</property>
                                        <property name="top_attach">2</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkCheckButton" id="AudioAllowEAC3Pass">
                                        <property name="label" translatable="yes">EAC-3</property>
                                        <property name="visible">True</property>
                                        <property name="can_focus">True</property>
                                        <property name="receives_default">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="tooltip_text" translatable="yes">Enable this if your playback device supports EAC-3.
This permits EAC-3 passthru to be selected when automatic passthru selection is enabled.</property>
                                        <property name="halign">start</property>
                                        <property name="active">True</property>
                                        <property name="draw_indicator">True</property>
                                        <signal name="toggled" handler="audio_passthru_widget_changed_cb" swapped="no"/>
                                      </object>
                                      <packing>
                                        <property name="left_attach">2</property>
                                        <property name="top_attach">1</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkCheckButton" id="AudioAllowTRUEHDPass">
                                        <property name="label" translatable="yes">TrueHD</property>
                                        <property name="visible">True</property>
                                        <property name="can_focus">True</property>
                                        <property name="receives_default">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="tooltip_text" translatable="yes">Enable this if your playback device supports TrueHD.
This permits TrueHD passthru to be selected when automatic passthru selection is enabled.</property>
                                        <property name="halign">start</property>
                                        <property name="active">True</property>
                                        <property name="draw_indicator">True</property>
                                        <signal name="toggled" handler="audio_passthru_widget_changed_cb" swapped="no"/>
                                      </object>
                                      <packing>
                                        <property name="left_attach">1</property>
                                        <property name="top_attach">3</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkCheckButton" id="AudioAllowFLACPass">
                                        <property name="label" translatable="yes">FLAC</property>
                                        <property name="visible">True</property>
                                        <property name="can_focus">True</property>
                                        <property name="receives_default">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="tooltip_text" translatable="yes">Enable this if your playback device supports FLAC.
This permits FLAC passthru to be selected when automatic passthru selection is enabled.</property>
                                        <property name="halign">start</property>
                                        <property name="active">True</property>
                                        <property name="draw_indicator">True</property>
                                        <signal name="toggled" handler="audio_passthru_widget_changed_cb" swapped="no"/>
                                      </object>
                                      <packing>
                                        <property name="left_attach">2</property>
                                        <property name="top_attach">3</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                  </object>
                                  <packing>
                                    <property name="fill">True</property>
                                    <property name="position">0</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkBox" id="auto_fallback_box">
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="orientation">horizontal</property>
                                    <property name="spacing">6</property>
                                    <property name="halign">end</property>
                                    <child>
                                      <object class="GtkLabel" id="labela4">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="halign">end</property>
                                        <property name="hexpand">True</property>
                                        <property name="label" translatable="yes">Passthru Fallback:</property>
                                      </object>
                                      <packing>
                                        <property name="fill">True</property>
                                        <property name="position">0</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkComboBox" id="AudioEncoderFallback">
                                        <property name="visible">True</property>
                                        <property name="valign">GTK_ALIGN_CENTER</property>
                                        <property name="can_focus">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="tooltip_text" translatable="yes">Set the audio codec to encode with when a suitable track can not be found for audio passthru.</property>
                                        <signal name="changed" handler="audio_fallback_widget_changed_cb" swapped="no"/>
                                      </object>
                                      <packing>
                                        <property name="fill">True</property>
                                        <property name="position">1</property>
                                      </packing>
                                    </child>
                                  </object>
                                  <packing>
                                    <property name="fill">True</property>
                                    <property name="position">1</property>
                                  </packing>
                                </child>
                              </object>
                              <packing>
                                <property name="fill">True</property>
                                <property name="position">1</property>
                              </packing>
                            </child>
                          </object>
                          <packing>
                            <property name="position">0</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkLabel" id="audio_def_settings_label">
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="margin_top">6</property>
                            <property name="halign">start</property>
                            <property name="use_markup">True</property>
                            <property name="label" translatable="yes">&lt;b&gt;Audio Encoder Settings:&lt;/b&gt;</property>
                            <property name="tooltip_markup" translatable="yes">Each selected source track will be encoded with all selected encoders</property>
                          </object>
                          <packing>
                            <property name="position">2</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkSeparator" id="sep1">
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                          </object>
                          <packing>
                            <property name="position">3</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkBox" id="audio_list_default_header">
                            <property name="orientation">horizontal</property>
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <child>
                              <object class="GtkLabel" id="audio_defaults_encoder_label">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="label" translatable="yes">Encoder</property>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">False</property>
                                <property name="position">0</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkLabel" id="audio_defaults_bitrate_label">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="label" translatable="yes">Bitrate/Quality</property>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">False</property>
                                <property name="position">1</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkLabel" id="audio_defaults_mixdown_label">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="label" translatable="yes">Mixdown</property>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">False</property>
                                <property name="position">2</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkLabel" id="audio_defaults_samplerate_label">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="label" translatable="yes">Samplerate</property>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">False</property>
                                <property name="position">3</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkLabel" id="audio_defaults_gain_label">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="label" translatable="yes">Gain</property>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">False</property>
                                <property name="position">4</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkLabel" id="audio_defaults_drc_label">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="label" translatable="yes">DRC</property>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">False</property>
                                <property name="position">5</property>
                              </packing>
                            </child>
                          </object>
                          <packing>
                            <property name="position">4</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkScrolledWindow" id="scrolledwindow12">
                            <property name="visible">True</property>
                            <property name="can_focus">True</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="hexpand">True</property>
                            <child>
                              <object class="GtkListBox" id="audio_list_default">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="vexpand">True</property>
                                <property name="selection_mode">none</property>
                                <property name="activate_on_single_click">False</property>
                              </object>
                            </child>
                          </object>
                          <packing>
                            <property name="expand">True</property>
                            <property name="position">5</property>
                          </packing>
                        </child>
                      </object>
                      <packing>
                        <property name="position">4</property>
                        <property name="name">audio_defaults_tab</property>
                        <property name="title" translatable="yes">Audio Defaults</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkBox" id="audio_list_tab">
                        <property name="orientation">vertical</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                        <child>
                          <object class="GtkBox" id="vbox17">
                            <property name="orientation">vertical</property>
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="spacing">2</property>
                            <property name="margin-top">6</property>
                            <property name="margin-bottom">6</property>
                            <property name="margin-start">6</property>
                            <property name="margin-end">6</property>
                            <child>
                              <object class="GtkToolbar" id="audio_toolbar">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <child>
                                  <object class="GtkToolButton" id="audio_add">
                                    <property name="visible">True</property>
                                    <property name="sensitive">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="is_important">True</property>
                                    <property name="label" translatable="yes">Add</property>
                                    <property name="icon_name">list-add</property>
                                    <property name="tooltip_text" translatable="yes">Add new audio settings to the list</property>
                                    <signal name="clicked" handler="audio_add_clicked_cb" swapped="no"/>
                                  </object>
                                  <packing>
                                    <property name="expand">False</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkToolButton" id="audio_add_all">
                                    <property name="visible">True</property>
                                    <property name="sensitive">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="is_important">True</property>
                                    <property name="label" translatable="yes">Add All</property>
                                    <property name="icon_name">list-add</property>
                                    <property name="tooltip_text" translatable="yes">Add all audio tracks to the list</property>
                                    <signal name="clicked" handler="audio_add_all_clicked_cb" swapped="no"/>
                                  </object>
                                  <packing>
                                    <property name="expand">False</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkToolButton" id="audio_reset">
                                    <property name="visible">True</property>
                                    <property name="sensitive">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="is_important">True</property>
                                    <property name="label" translatable="yes">Reload Defaults</property>
                                    <property name="icon_name">emblem-default</property>
                                    <property name="tooltip_text" translatable="yes">Reload all audio settings from defaults</property>
                                    <signal name="clicked" handler="audio_reset_clicked_cb" swapped="no"/>
                                  </object>
                                  <packing>
                                    <property name="expand">False</property>
                                  </packing>
                                </child>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">True</property>
                                <property name="position">0</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkScrolledWindow" id="scrolledwindow5">
                                <property name="visible">True</property>
                                <property name="can_focus">True</property>
                                <property name="hscrollbar_policy">GTK_POLICY_NEVER</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <child>
                                  <object class="GtkTreeView" id="audio_list_view">
                                    <property name="visible">True</property>
                                    <property name="can_focus">True</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="headers_visible">False</property>
                                    <property name="headers_clickable">False</property>
                                    <child internal-child="selection">
                                      <object class="GtkTreeSelection" id="treeview-selection1"/>
                                    </child>
                                  </object>
                                </child>
                              </object>
                              <packing>
                                <property name="expand">True</property>
                                <property name="fill">True</property>
                                <property name="position">2</property>
                              </packing>
                            </child>
                          </object>
                          <packing>
                            <property name="expand">True</property>
                            <property name="fill">True</property>
                            <property name="position">0</property>
                          </packing>
                        </child>
                      </object>
                      <packing>
                        <property name="position">5</property>
                        <property name="name">audio_list_tab</property>
                        <property name="title" translatable="yes">Audio List</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkBox" id="subtitle_defaults_tab">
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="orientation">vertical</property>
                        <property name="margin-start">12</property>
                        <property name="margin-end">12</property>
                        <property name="margin_top">12</property>
                        <property name="margin_bottom">12</property>
                        <property name="hexpand">True</property>
                        <child>
                          <object class="GtkBox" id="subtitle_defaults_box1">
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="orientation">horizontal</property>
                            <property name="spacing">6</property>
                            <child>
                              <object class="GtkBox" id="subtitle_defaults_box2">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="orientation">vertical</property>
                                <child>
                                  <object class="GtkGrid" id="sub_grid2">
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="column_spacing">5</property>
                                    <property name="row-spacing">2</property>
                                    <child>
                                      <object class="GtkLabel" id="sub_label4">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="halign">end</property>
                                        <property name="label" translatable="yes">Selection Behavior:</property>
                                        <property name="justify">right</property>
                                      </object>
                                      <packing>
                                        <property name="left_attach">0</property>
                                        <property name="top_attach">0</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkComboBox" id="SubtitleTrackSelectionBehavior">
                                        <property name="visible">True</property>
                                        <property name="valign">GTK_ALIGN_CENTER</property>
                                        <property name="can_focus">False</property>
                                        <signal name="changed" handler="subtitle_def_widget_changed_cb" swapped="no"/>
                                      </object>
                                      <packing>
                                        <property name="left_attach">1</property>
                                        <property name="top_attach">0</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                  </object>
                                  <packing>
                                    <property name="fill">True</property>
                                    <property name="position">0</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkGrid" id="sub_grid3">
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="column_spacing">5</property>
                                    <property name="row-spacing">2</property>
                                    <property name="halign">GTK_ALIGN_END</property>
                                    <property name="margin_top">6</property>
                                    <property name="margin_bottom">6</property>
                                    <child>
                                      <object class="GtkScrolledWindow" id="sub_scrolledwindow10">
                                        <property name="visible">True</property>
                                        <property name="can_focus">True</property>
                                        <property name="hscrollbar_policy">GTK_POLICY_NEVER</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="min_content_height">108</property>
                                        <child>
                                          <object class="GtkListBox" id="subtitle_avail_lang">
                                            <property name="visible">True</property>
                                            <property name="can_focus">False</property>
                                          </object>
                                        </child>
                                      </object>
                                      <packing>
                                        <property name="left_attach">0</property>
                                        <property name="top_attach">1</property>
                                        <property name="width">1</property>
                                        <property name="height">4</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkScrolledWindow" id="sub_scrolledwindow11">
                                        <property name="visible">True</property>
                                        <property name="can_focus">True</property>
                                        <property name="hscrollbar_policy">GTK_POLICY_NEVER</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <child>
                                          <object class="GtkListBox" id="subtitle_selected_lang">
                                            <property name="visible">True</property>
                                            <property name="can_focus">False</property>
                                            <property name="tooltip_text" translatable="yes">Create a list of languages you would like to select subtitles for.

The first language in this list is your "preferred" language and will be used
for determining subtitle selection settings when there is foreign audio.</property>
                                          </object>
                                        </child>
                                      </object>
                                      <packing>
                                        <property name="left_attach">2</property>
                                        <property name="top_attach">1</property>
                                        <property name="width">1</property>
                                        <property name="height">4</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkButton" id="subtitle_lang_add">
                                        <property name="label" translatable="yes">Add</property>
                                        <property name="visible">True</property>
                                        <property name="can_focus">True</property>
                                        <property name="receives_default">True</property>
                                        <property name="valign">GTK_ALIGN_CENTER</property>
                                        <signal name="clicked" handler="subtitle_add_lang_clicked_cb" swapped="no"/>
                                      </object>
                                      <packing>
                                        <property name="left_attach">1</property>
                                        <property name="top_attach">2</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkButton" id="subtitle_lang_remove">
                                        <property name="label" translatable="yes">Remove</property>
                                        <property name="visible">True</property>
                                        <property name="can_focus">True</property>
                                        <property name="receives_default">True</property>
                                        <property name="valign">GTK_ALIGN_CENTER</property>
                                        <signal name="clicked" handler="subtitle_remove_lang_clicked_cb" swapped="no"/>
                                      </object>
                                      <packing>
                                        <property name="left_attach">1</property>
                                        <property name="top_attach">3</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkLabel" id="sub_label8">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="label" translatable="yes">Available Languages</property>
                                      </object>
                                      <packing>
                                        <property name="left_attach">0</property>
                                        <property name="top_attach">0</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkLabel" id="sub_label24">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="label" translatable="yes">Selected Languages</property>
                                      </object>
                                      <packing>
                                        <property name="left_attach">2</property>
                                        <property name="top_attach">0</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkLabel" id="subtitle_preferred_language">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="halign">end</property>
                                        <property name="label" translatable="yes">Preferred Language: None</property>
                                        <property name="justify">right</property>
                                      </object>
                                      <packing>
                                        <property name="left_attach">3</property>
                                        <property name="top_attach">1</property>
                                        <property name="width">1</property>
                                        <property name="height">1</property>
                                      </packing>
                                    </child>
                                  </object>
                                  <packing>
                                    <property name="expand">True</property>
                                    <property name="fill">True</property>
                                    <property name="position">1</property>
                                  </packing>
                                </child>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">True</property>
                                <property name="position">0</property>
                              </packing>
                            </child>
                          </object>
                          <packing>
                            <property name="position">0</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkCheckButton" id="SubtitleAddForeignAudioSearch">
                            <property name="label" translatable="yes">Add Foreign Audio Search Pass</property>
                            <property name="visible">True</property>
                            <property name="can_focus">True</property>
                            <property name="receives_default">False</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="tooltip_text" translatable="yes">Add "Foreign Audio Search" when the default audio track is your preferred language.
This search pass finds short sequences of foreign audio and provides subtitles for them.

This option requires a language to be set in the Selected Languages list.</property>
                            <property name="halign">start</property>
                            <property name="active">True</property>
                            <property name="draw_indicator">True</property>
                            <signal name="toggled" handler="subtitle_def_widget_changed_cb" swapped="no"/>
                          </object>
                          <packing>
                            <property name="position">1</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkCheckButton" id="SubtitleAddForeignAudioSubtitle">
                            <property name="label" translatable="yes">Add subtitle track if default audio is foreign</property>
                            <property name="visible">True</property>
                            <property name="can_focus">True</property>
                            <property name="receives_default">False</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="tooltip_text" translatable="yes">When the default audio track is not your preferred language, add a subtitle track.

This option requires a language to be set in the Selected Languages list.</property>
                            <property name="halign">start</property>
                            <property name="active">True</property>
                            <property name="draw_indicator">True</property>
                            <signal name="toggled" handler="subtitle_def_widget_changed_cb" swapped="no"/>
                          </object>
                          <packing>
                            <property name="position">2</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkCheckButton" id="SubtitleAddCC">
                            <property name="label" translatable="yes">Add Closed Captions when available</property>
                            <property name="visible">True</property>
                            <property name="can_focus">True</property>
                            <property name="receives_default">False</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="tooltip_text" translatable="yes">Closed captions are text subtitles that can be added to any container as a soft subtitle track</property>
                            <property name="halign">start</property>
                            <property name="draw_indicator">True</property>
                            <signal name="toggled" handler="subtitle_def_widget_changed_cb" swapped="no"/>
                          </object>
                          <packing>
                            <property name="position">3</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkBox" id="subtitle_burn_box">
                            <property name="orientation">horizontal</property>
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="spacing">4</property>
                            <child>
                              <object class="GtkLabel" id="sub_burn_behavior_label">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="halign">end</property>
                                <property name="label" translatable="yes">Burn-In Behavior*:</property>
                                <property name="justify">right</property>
                              </object>
                              <packing>
                                <property name="position">0</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkComboBox" id="SubtitleBurnBehavior">
                                <property name="visible">True</property>
                                <property name="valign">GTK_ALIGN_CENTER</property>
                                <property name="can_focus">False</property>
                                <property name="tooltip_text" translatable="yes">Set the behavior of subtitle "Burn-In".

Burned-In subtitles are part of the video and can not be disabled during playback.
Only one subtitle track can be burned! Since conflicts can occur, the first chosen wins.</property>
                                <signal name="changed" handler="subtitle_def_widget_changed_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="position">1</property>
                              </packing>
                            </child>
                          </object>
                          <packing>
                            <property name="position">4</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkBox" id="subtitle_additional_burn_box">
                            <property name="orientation">horizontal</property>
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="spacing">4</property>
                            <child>
                              <object class="GtkLabel" id="sub_additional_burn_label">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="halign">end</property>
                                <property name="label" translatable="yes">Burn-In for deficient players*:</property>
                                <property name="justify">right</property>
                              </object>
                              <packing>
                                <property name="position">0</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkCheckButton" id="SubtitleBurnDVDSub">
                                <property name="label" translatable="yes">DVD Subtitles</property>
                                <property name="visible">True</property>
                                <property name="can_focus">True</property>
                                <property name="receives_default">False</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="tooltip_text" translatable="yes">Burn the first selected DVD subtitle track. All other DVD subtitle tracks will be discarded.
Use this option if your player software or device does not support DVD subtitles.

Only one subtitle track can be burned! Since conflicts can occur, the first chosen wins.</property>
                                <property name="halign">start</property>
                                <property name="draw_indicator">True</property>
                                <signal name="toggled" handler="subtitle_def_widget_changed_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="position">1</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkCheckButton" id="SubtitleBurnBDSub">
                                <property name="label" translatable="yes">Blu-ray Subtitles</property>
                                <property name="visible">True</property>
                                <property name="can_focus">True</property>
                                <property name="receives_default">False</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="tooltip_text" translatable="yes">Burn the first selected Blu-ray subtitle track. All other Blu-ray subtitle tracks will be discarded.
Use this option if your player software or device does not support Blu-ray subtitles.

Only one subtitle track can be burned! Since conflicts can occur, the first chosen wins.</property>
                                <property name="halign">start</property>
                                <property name="draw_indicator">True</property>
                                <signal name="toggled" handler="subtitle_def_widget_changed_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="position">2</property>
                              </packing>
                            </child>
                          </object>
                          <packing>
                            <property name="position">5</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkLabel" id="sub_burn_warning_label">
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="halign">start</property>
                            <property name="label" translatable="yes">&lt;small&gt;* Only one of the above subtitle burn options will be applied, starting with the top.&lt;/small&gt;</property>
                            <property name="tooltip_text" translatable="yes">Only one subtitle track can be burned! Since conflicts can occur, the first chosen wins.</property>
                            <property name="use_markup">True</property>
                            <property name="justify">left</property>
                          </object>
                          <packing>
                            <property name="position">6</property>
                          </packing>
                        </child>
                      </object>
                      <packing>
                        <property name="position">6</property>
                        <property name="name">subtitle_defaults_tab</property>
                        <property name="title" translatable="yes">Subtitle Defaults</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkBox" id="subtitle_list_tab">
                        <property name="orientation">vertical</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                        <child>
                          <object class="GtkBox" id="vbox12">
                            <property name="orientation">vertical</property>
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="spacing">2</property>
                            <property name="margin-top">6</property>
                            <property name="margin-bottom">6</property>
                            <property name="margin-start">6</property>
                            <property name="margin-end">6</property>
                            <child>
                              <object class="GtkToolbar" id="subtitle_toolbar">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <child>
                                  <object class="GtkToolButton" id="subtitle_add">
                                    <property name="visible">True</property>
                                    <property name="sensitive">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="is_important">True</property>
                                    <property name="label" translatable="yes">Add</property>
                                    <property name="icon_name">list-add</property>
                                    <property name="tooltip_text" translatable="yes">Add new subtitle settings to the list</property>
                                    <signal name="clicked" handler="subtitle_add_clicked_cb" swapped="no"/>
                                  </object>
                                  <packing>
                                    <property name="expand">False</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkToolButton" id="subtitle_add_all">
                                    <property name="visible">True</property>
                                    <property name="sensitive">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="is_important">True</property>
                                    <property name="label" translatable="yes">Add All</property>
                                    <property name="icon_name">list-add</property>
                                    <property name="tooltip_text" translatable="yes">Add all subtitle tracks to the list</property>
                                    <signal name="clicked" handler="subtitle_add_all_clicked_cb" swapped="no"/>
                                  </object>
                                  <packing>
                                    <property name="expand">False</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkToolButton" id="subtitle_add_fas">
                                    <property name="visible">True</property>
                                    <property name="sensitive">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="is_important">True</property>
                                    <property name="label" translatable="yes">Foreign Audio Search</property>
                                    <property name="icon_name">list-add</property>
                                    <property name="tooltip_text" translatable="yes">Add an extra pass to the encode which searches
for subtitle candidates that provide subtitles for
segments of the audio that are in a foreign language.</property>
                                    <signal name="clicked" handler="subtitle_add_fas_clicked_cb" swapped="no"/>
                                  </object>
                                  <packing>
                                    <property name="expand">False</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkToolButton" id="subtitle_reset">
                                    <property name="visible">True</property>
                                    <property name="sensitive">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="is_important">True</property>
                                    <property name="label" translatable="yes">Reload Defaults</property>
                                    <property name="icon_name">emblem-default</property>
                                    <property name="tooltip_text" translatable="yes">Reload all subtitle settings from defaults</property>
                                    <signal name="clicked" handler="subtitle_reset_clicked_cb" swapped="no"/>
                                  </object>
                                  <packing>
                                    <property name="expand">False</property>
                                  </packing>
                                </child>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">True</property>
                                <property name="position">0</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkScrolledWindow" id="scrolledwindow4">
                                <property name="visible">True</property>
                                <property name="can_focus">True</property>
                                <property name="hscrollbar_policy">GTK_POLICY_NEVER</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <child>
                                  <object class="GtkTreeView" id="subtitle_list_view">
                                    <property name="visible">True</property>
                                    <property name="can_focus">True</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="headers_visible">False</property>
                                    <property name="headers_clickable">False</property>
                                    <child internal-child="selection">
                                      <object class="GtkTreeSelection" id="treeview-selection2"/>
                                    </child>
                                  </object>
                                </child>
                              </object>
                              <packing>
                                <property name="expand">True</property>
                                <property name="fill">True</property>
                                <property name="position">1</property>
                              </packing>
                            </child>
                          </object>
                          <packing>
                            <property name="expand">True</property>
                            <property name="fill">True</property>
                            <property name="position">0</property>
                          </packing>
                        </child>
                      </object>
                      <packing>
                        <property name="position">7</property>
                        <property name="name">subtitle_list_tab</property>
                        <property name="title" translatable="yes">Subtitle List</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkBox" id="advanced_video_tab">
                        <property name="orientation">horizontal</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                        <child>
                          <object class="GtkBox" id="x264_box">
                            <property name="orientation">vertical</property>
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <child>
                              <object class="GtkBox" id="hbox73">
                                <property name="orientation">horizontal</property>
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="spacing">2</property>
                                <child>
                                  <object class="GtkBox" id="vbox21">
                                    <property name="orientation">vertical</property>
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <child>
                                      <object class="GtkFrame" id="frame10">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="label_xalign">0</property>
                                        <property name="shadow_type">none</property>
                                        <child>
                                          <object class="GtkGrid" id="table6">
                                            <property name="visible">True</property>
                                            <property name="can_focus">False</property>
                                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                            <property name="column_spacing">4</property>
                                            <property name="row-spacing">2</property>
                                            <property name="margin-top">6</property>
                                            <property name="margin-bottom">2</property>
                                            <property name="margin-start">12</property>
                                            <property name="margin-end">2</property>
                                            <child>
                                              <object class="GtkLabel" id="label49">
                                                <property name="visible">True</property>
                                                <property name="can_focus">False</property>
                                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                <property name="halign">start</property>
                                                <property name="label" translatable="yes">&lt;small&gt;Reference Frames:&lt;/small&gt;</property>
                                                <property name="use_markup">True</property>
                                              </object>
                                              <packing>
                                                <property name="top_attach">0</property>
                                                <property name="left_attach">0</property>
                                                <property name="width">1</property>
                                                <property name="height">1</property>
                                              </packing>
                                            </child>
                                            <child>
                                              <object class="GtkSpinButton" id="x264_refs">
                                                <property name="halign">center</property>
                                                <property name="visible">True</property>
                                                <property name="can_focus">True</property>
                                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                <property name="tooltip_text" translatable="yes">Sane values are ~1-6.  The more you add, the better the compression, but the slower the encode.
Cel animation tends to benefit from more reference frames a lot more than film content.

Note that many hardware devices have limitations on the number of supported reference
frames, so if you're encoding for a handheld or standalone player, don't touch this unless
you're absolutely sure you know what you're doing!</property>
                                                <property name="primary_icon_activatable">False</property>
                                                <property name="secondary_icon_activatable">False</property>
                                                <property name="adjustment">adjustment8</property>
                                                <signal name="value-changed" handler="x264_widget_changed_cb" swapped="no"/>
                                              </object>
                                              <packing>
                                                <property name="top_attach">0</property>
                                                <property name="left_attach">1</property>
                                                <property name="width">1</property>
                                                <property name="height">1</property>
                                              </packing>
                                            </child>
                                            <child>
                                              <object class="GtkLabel" id="label51">
                                                <property name="visible">True</property>
                                                <property name="can_focus">False</property>
                                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                <property name="halign">start</property>
                                                <property name="label" translatable="yes">&lt;small&gt;Maximum B-Frames:&lt;/small&gt;</property>
                                                <property name="use_markup">True</property>
                                              </object>
                                              <packing>
                                                <property name="top_attach">1</property>
                                                <property name="left_attach">0</property>
                                                <property name="width">1</property>
                                                <property name="height">1</property>
                                              </packing>
                                            </child>
                                            <child>
                                              <object class="GtkSpinButton" id="x264_bframes">
                                                <property name="halign">center</property>
                                                <property name="visible">True</property>
                                                <property name="can_focus">True</property>
                                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                <property name="tooltip_text" translatable="yes">Sane values are ~2-5.  This specifies the maximum number of sequential B-frames that the encoder can use.

Large numbers generally won't help significantly unless Adaptive B-frames is set to Optimal.
Cel-animated source material and B-pyramid also significantly increase the usefulness of larger
values.

Baseline profile, as required for iPods and similar devices, requires B-frames to be set to 0 (off).</property>
                                                <property name="primary_icon_activatable">False</property>
                                                <property name="secondary_icon_activatable">False</property>
                                                <property name="adjustment">adjustment9</property>
                                                <signal name="value-changed" handler="x264_widget_changed_cb" swapped="no"/>
                                              </object>
                                              <packing>
                                                <property name="top_attach">1</property>
                                                <property name="left_attach">1</property>
                                                <property name="width">1</property>
                                                <property name="height">1</property>
                                              </packing>
                                            </child>
                                            <child>
                                              <object class="GtkLabel" id="label50">
                                                <property name="visible">True</property>
                                                <property name="can_focus">False</property>
                                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                <property name="halign">start</property>
                                                <property name="label" translatable="yes">&lt;small&gt;Pyramidal B-Frames:&lt;/small&gt;</property>
                                                <property name="use_markup">True</property>
                                              </object>
                                              <packing>
                                                <property name="top_attach">2</property>
                                                <property name="left_attach">0</property>
                                                <property name="width">1</property>
                                                <property name="height">1</property>
                                              </packing>
                                            </child>
                                            <child>
                                              <object class="GtkComboBox" id="x264_bpyramid">
                                                <property name="visible">True</property>
                                                <property name="can_focus">False</property>
                                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                <property name="tooltip_text" translatable="yes">B-pyramid improves compression by creating a pyramidal structure (hence the name)
of B-frames, allowing B-frames to reference each other to improve compression.

Requires Max B-frames greater than 1; optimal adaptive B-frames is strongly recommended for full compression benefit.</property>
                                                <signal name="changed" handler="x264_widget_changed_cb" swapped="no"/>
                                              </object>
                                              <packing>
                                                <property name="top_attach">2</property>
                                                <property name="left_attach">1</property>
                                                <property name="width">1</property>
                                                <property name="height">1</property>
                                              </packing>
                                            </child>
                                            <child>
                                              <object class="GtkLabel" id="label40">
                                                <property name="visible">True</property>
                                                <property name="can_focus">False</property>
                                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                <property name="halign">start</property>
                                                <property name="label" translatable="yes">&lt;small&gt;Weighted P-Frames:&lt;/small&gt;</property>
                                                <property name="use_markup">True</property>
                                              </object>
                                              <packing>
                                                <property name="top_attach">3</property>
                                                <property name="left_attach">0</property>
                                                <property name="width">1</property>
                                                <property name="height">1</property>
                                              </packing>
                                            </child>
                                            <child>
                                              <object class="GtkComboBox" id="x264_weighted_pframes">
                                                <property name="visible">True</property>
                                                <property name="can_focus">False</property>
                                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                <property name="tooltip_text" translatable="yes">Performs extra analysis to decide upon weighting parameters for each frame.

This improves overall compression slightly and improves the quality of fades greatly.

Baseline profile, as required for iPods and similar devices, requires weighted P-frame
prediction to be disabled.  Note that some devices and players, even those that support
Main Profile, may have problems with Weighted P-frame prediction: the Apple TV is
completely incompatible with it, for example.</property>
                                                <signal name="changed" handler="x264_widget_changed_cb" swapped="no"/>
                                              </object>
                                              <packing>
                                                <property name="top_attach">3</property>
                                                <property name="left_attach">1</property>
                                                <property name="width">1</property>
                                                <property name="height">1</property>
                                              </packing>
                                            </child>
                                            <child>
                                              <object class="GtkCheckButton" id="x264_8x8dct">
                                                <property name="label" translatable="yes">8x8 Transform</property>
                                                <property name="visible">True</property>
                                                <property name="can_focus">True</property>
                                                <property name="receives_default">False</property>
                                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                <property name="tooltip_text" translatable="yes">The 8x8 transform is the single most useful feature of x264 in terms of compression-per-speed.

It improves compression by at least 5% at a very small speed cost and may
provide an unusually high visual quality benefit compared to its compression
gain.  However, it requires High Profile, which many devices may not support.</property>
                                                <property name="halign">start</property>
                                                <property name="active">True</property>
                                                <property name="draw_indicator">True</property>
                                                <signal name="toggled" handler="x264_widget_changed_cb" swapped="no"/>
                                              </object>
                                              <packing>
                                                <property name="top_attach">4</property>
                                                <property name="left_attach">0</property>
                                                <property name="width">2</property>
                                                <property name="height">1</property>
                                              </packing>
                                            </child>
                                            <child>
                                              <object class="GtkCheckButton" id="x264_cabac">
                                                <property name="label" translatable="yes">CABAC Entropy Encoding</property>
                                                <property name="visible">True</property>
                                                <property name="can_focus">True</property>
                                                <property name="receives_default">False</property>
                                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                <property name="tooltip_text" translatable="yes">After the encoder has done its work, it has a bunch of data that
needs to be compressed losslessly, similar to ZIP or RAR.  H.264 provides
two options for this: CAVLC and CABAC.  CABAC decodes a lot slower but
compresses significantly better (10-30%), especially at lower bitrates.

If you're looking to minimize CPU requirements for video playback, disable this option.
Baseline profile, as required for iPods and similar devices, requires CABAC to be disabled.</property>
                                                <property name="halign">start</property>
                                                <property name="active">True</property>
                                                <property name="draw_indicator">True</property>
                                                <signal name="toggled" handler="x264_widget_changed_cb" swapped="no"/>
                                              </object>
                                              <packing>
                                                <property name="top_attach">5</property>
                                                <property name="left_attach">0</property>
                                                <property name="width">2</property>
                                                <property name="height">1</property>
                                              </packing>
                                            </child>
                                          </object>
                                        </child>
                                        <child type="label">
                                          <object class="GtkLabel" id="label53">
                                            <property name="visible">True</property>
                                            <property name="can_focus">False</property>
                                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                            <property name="label" translatable="yes">&lt;small&gt;&lt;b&gt;Encoding Features&lt;/b&gt;&lt;/small&gt;</property>
                                            <property name="use_markup">True</property>
                                          </object>
                                        </child>
                                      </object>
                                      <packing>
                                        <property name="expand">False</property>
                                        <property name="fill">True</property>
                                        <property name="position">1</property>
                                      </packing>
                                    </child>
                                  </object>
                                  <packing>
                                    <property name="expand">True</property>
                                    <property name="fill">True</property>
                                    <property name="position">0</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkBox" id="vbox25">
                                    <property name="orientation">vertical</property>
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <child>
                                      <object class="GtkFrame" id="frame12">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="label_xalign">0</property>
                                        <property name="shadow_type">none</property>
                                        <child>
                                          <object class="GtkBox" id="hbox84">
                                            <property name="orientation">horizontal</property>
                                            <property name="visible">True</property>
                                            <property name="can_focus">False</property>
                                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                            <property name="margin-start">12</property>
                                            <child>
                                              <object class="GtkGrid" id="table5">
                                                <property name="visible">True</property>
                                                <property name="can_focus">False</property>
                                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                <property name="column_spacing">4</property>
                                                <property name="row-spacing">2</property>
                                                <child>
                                                  <object class="GtkLabel" id="label55">
                                                    <property name="visible">True</property>
                                                    <property name="can_focus">False</property>
                                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                    <property name="halign">start</property>
                                                    <property name="label" translatable="yes">&lt;small&gt;Motion Est. Method:&lt;/small&gt;</property>
                                                    <property name="use_markup">True</property>
                                                  </object>
                                                  <packing>
                                                    <property name="top_attach">0</property>
                                                    <property name="left_attach">0</property>
                                                    <property name="width">1</property>
                                                    <property name="height">1</property>
                                                  </packing>
                                                </child>
                                                <child>
                                                  <object class="GtkComboBox" id="x264_me">
                                                    <property name="visible">True</property>
                                                    <property name="can_focus">False</property>
                                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                    <property name="tooltip_text" translatable="yes">Controls the motion estimation method.

Motion estimation is how the encoder estimates how each block of pixels in a frame has moved.
A better motion search method improves compression at the cost of speed.

Diamond: performs an extremely fast and simple search using a diamond pattern.
Hexagon: performs a somewhat more effective but slightly slower search using a hexagon pattern.
Uneven Multi-Hex: performs a very wide search using a variety of patterns, more accurately capturing complex motion.
Exhaustive: performs a "dumb" search of every pixel in a wide area.  Significantly slower for only a small compression gain.
Transformed Exhaustive: Like exhaustive, but makes even more accurate decisions. Accordingly, somewhat slower, also for only a small improvement.</property>
                                                    <signal name="changed" handler="x264_me_changed_cb" swapped="no"/>
                                                  </object>
                                                  <packing>
                                                    <property name="top_attach">0</property>
                                                    <property name="left_attach">1</property>
                                                    <property name="width">1</property>
                                                    <property name="height">1</property>
                                                  </packing>
                                                </child>
                                                <child>
                                                  <object class="GtkLabel" id="label58">
                                                    <property name="visible">True</property>
                                                    <property name="can_focus">False</property>
                                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                    <property name="halign">start</property>
                                                    <property name="label" translatable="yes">&lt;small&gt;Subpel ME &amp;amp; Mode:&lt;/small&gt;</property>
                                                    <property name="use_markup">True</property>
                                                  </object>
                                                  <packing>
                                                    <property name="top_attach">1</property>
                                                    <property name="left_attach">0</property>
                                                    <property name="width">1</property>
                                                    <property name="height">1</property>
                                                  </packing>
                                                </child>
                                                <child>
                                                  <object class="GtkComboBox" id="x264_subme">
                                                    <property name="visible">True</property>
                                                    <property name="can_focus">False</property>
                                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                    <property name="tooltip_markup" translatable="yes">This setting controls both subpixel-precision motion estimation and mode decision methods.

Subpixel motion estimation is used for refining motion estimates beyond mere pixel accuracy, improving compression.
Mode decision is the method used to choose how to encode each block of the frame: a very important decision.
SAD is the fastest method, followed by SATD, RD, RD refinement, and the slowest, QPRD.
6 or higher is strongly recommended: Psy-RD, a very powerful psy optimization that helps retain detail, requires RD.
11 disables all early terminations in analysis.
10 and 11, the most powerful and slowest options, require adaptive quantization (aq-mode &gt; 0) and trellis 2 (always).</property>
                                                    <signal name="changed" handler="x264_widget_changed_cb" swapped="no"/>
                                                  </object>
                                                  <packing>
                                                    <property name="top_attach">1</property>
                                                    <property name="left_attach">1</property>
                                                    <property name="width">1</property>
                                                    <property name="height">1</property>
                                                  </packing>
                                                </child>
                                                <child>
                                                  <object class="GtkLabel" id="label57">
                                                    <property name="visible">True</property>
                                                    <property name="can_focus">False</property>
                                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                    <property name="halign">start</property>
                                                    <property name="label" translatable="yes">&lt;small&gt;Motion Est. Range:&lt;/small&gt;</property>
                                                    <property name="use_markup">True</property>
                                                  </object>
                                                  <packing>
                                                    <property name="top_attach">2</property>
                                                    <property name="left_attach">0</property>
                                                    <property name="width">1</property>
                                                    <property name="height">1</property>
                                                  </packing>
                                                </child>
                                                <child>
                                                  <object class="GtkSpinButton" id="x264_merange">
                                                    <property name="visible">True</property>
                                                    <property name="can_focus">True</property>
                                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                    <property name="tooltip_text" translatable="yes">This is the distance x264 searches from its initial guess at the
motion of a block in order to try to find its actual motion.

The default is fine for most content, but extremely high motion video,
especially at HD resolutions, may benefit from higher ranges, albeit at
a high speed cost.</property>
                                                    <property name="primary_icon_activatable">False</property>
                                                    <property name="secondary_icon_activatable">False</property>
                                                    <property name="adjustment">adjustment10</property>
                                                    <signal name="value-changed" handler="x264_widget_changed_cb" swapped="no"/>
                                                  </object>
                                                  <packing>
                                                    <property name="top_attach">2</property>
                                                    <property name="left_attach">1</property>
                                                    <property name="width">1</property>
                                                    <property name="height">1</property>
                                                  </packing>
                                                </child>
                                                <child>
                                                  <object class="GtkLabel" id="label52">
                                                    <property name="visible">True</property>
                                                    <property name="can_focus">False</property>
                                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                    <property name="halign">start</property>
                                                    <property name="label" translatable="yes">&lt;small&gt;Adaptive Direct Mode:&lt;/small&gt;</property>
                                                    <property name="use_markup">True</property>
                                                  </object>
                                                  <packing>
                                                    <property name="top_attach">3</property>
                                                    <property name="left_attach">0</property>
                                                    <property name="width">1</property>
                                                    <property name="height">1</property>
                                                  </packing>
                                                </child>
                                                <child>
                                                  <object class="GtkComboBox" id="x264_direct">
                                                    <property name="visible">True</property>
                                                    <property name="can_focus">False</property>
                                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                    <property name="tooltip_text" translatable="yes">H.264 allows for two different prediction modes, spatial and temporal, in B-frames.

Spatial, the default, is almost always better, but temporal is sometimes useful too.
x264 can, at the cost of a small amount of speed (and accordingly for a small compression gain),
adaptively select which is better for each particular frame.</property>
                                                    <signal name="changed" handler="x264_widget_changed_cb" swapped="no"/>
                                                  </object>
                                                  <packing>
                                                    <property name="top_attach">3</property>
                                                    <property name="left_attach">1</property>
                                                    <property name="width">1</property>
                                                    <property name="height">1</property>
                                                  </packing>
                                                </child>
                                                <child>
                                                  <object class="GtkLabel" id="label84">
                                                    <property name="visible">True</property>
                                                    <property name="can_focus">False</property>
                                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                    <property name="halign">start</property>
                                                    <property name="label" translatable="yes">&lt;small&gt;Adaptive B-Frames:&lt;/small&gt;</property>
                                                    <property name="use_markup">True</property>
                                                  </object>
                                                  <packing>
                                                    <property name="top_attach">4</property>
                                                    <property name="left_attach">0</property>
                                                    <property name="width">1</property>
                                                    <property name="height">1</property>
                                                  </packing>
                                                </child>
                                                <child>
                                                  <object class="GtkComboBox" id="x264_b_adapt">
                                                    <property name="visible">True</property>
                                                    <property name="can_focus">False</property>
                                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                    <property name="tooltip_markup" translatable="yes">x264 has a variety of algorithms to decide when to use B-frames and how many to use.

Fast mode takes roughly the same amount of time no matter how many B-frames you specify.
However, while fast, its decisions are often suboptimal.

Optimal mode gets slower as the maximum number of B-Frames increases,
but makes much more accurate decisions, especially when used with B-pyramid.</property>
                                                    <signal name="changed" handler="x264_widget_changed_cb" swapped="no"/>
                                                  </object>
                                                  <packing>
                                                    <property name="top_attach">4</property>
                                                    <property name="left_attach">1</property>
                                                    <property name="width">1</property>
                                                    <property name="height">1</property>
                                                  </packing>
                                                </child>
                                              </object>
                                              <packing>
                                                <property name="expand">True</property>
                                                <property name="fill">True</property>
                                                <property name="position">0</property>
                                              </packing>
                                            </child>
                                            <child>
                                              <object class="GtkGrid" id="table3">
                                                <property name="visible">True</property>
                                                <property name="can_focus">False</property>
                                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                <property name="column_spacing">4</property>
                                                <property name="row-spacing">2</property>
                                                <property name="margin-start">6</property>
                                                <child>
                                                  <placeholder/>
                                                </child>
                                                <child>
                                                  <placeholder/>
                                                </child>
                                                <child>
                                                  <placeholder/>
                                                </child>
                                                <child>
                                                  <placeholder/>
                                                </child>
                                                <child>
                                                  <object class="GtkLabel" id="label59">
                                                    <property name="visible">True</property>
                                                    <property name="can_focus">False</property>
                                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                    <property name="halign">start</property>
                                                    <property name="label" translatable="yes">&lt;small&gt;Partitions:&lt;/small&gt;</property>
                                                    <property name="use_markup">True</property>
                                                  </object>
                                                  <packing>
                                                    <property name="top_attach">0</property>
                                                    <property name="left_attach">0</property>
                                                    <property name="width">1</property>
                                                    <property name="height">1</property>
                                                  </packing>
                                                </child>
                                                <child>
                                                  <object class="GtkComboBox" id="x264_analyse">
                                                    <property name="visible">True</property>
                                                    <property name="can_focus">False</property>
                                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                    <property name="tooltip_text" translatable="yes">Mode decision picks from a variety of options to make its decision:
this option chooses what options those are.

Fewer partitions to check means faster encoding, at the cost of worse
decisions, since the best option might have been one that was turned off.</property>
                                                    <signal name="changed" handler="x264_widget_changed_cb" swapped="no"/>
                                                  </object>
                                                  <packing>
                                                    <property name="top_attach">0</property>
                                                    <property name="left_attach">1</property>
                                                    <property name="width">1</property>
                                                    <property name="height">1</property>
                                                  </packing>
                                                </child>
                                                <child>
                                                  <object class="GtkLabel" id="label62">
                                                    <property name="visible">True</property>
                                                    <property name="can_focus">False</property>
                                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                    <property name="halign">start</property>
                                                    <property name="label" translatable="yes">&lt;small&gt;Trellis:&lt;/small&gt;</property>
                                                    <property name="use_markup">True</property>
                                                  </object>
                                                  <packing>
                                                    <property name="top_attach">1</property>
                                                    <property name="left_attach">0</property>
                                                    <property name="width">1</property>
                                                    <property name="height">1</property>
                                                  </packing>
                                                </child>
                                                <child>
                                                  <object class="GtkComboBox" id="x264_trellis">
                                                    <property name="visible">True</property>
                                                    <property name="can_focus">False</property>
                                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                    <property name="tooltip_text" translatable="yes">Trellis fine-tunes the rounding of transform coefficients to
squeeze out 3-5% more compression at the cost of some speed.

"Always" uses trellis not only during the main encoding process, but also
during analysis, which improves compression even more, albeit at great speed cost.

Trellis costs more speed at higher bitrates and requires CABAC.</property>
                                                    <signal name="changed" handler="x264_widget_changed_cb" swapped="no"/>
                                                  </object>
                                                  <packing>
                                                    <property name="top_attach">1</property>
                                                    <property name="left_attach">1</property>
                                                    <property name="width">1</property>
                                                    <property name="height">1</property>
                                                  </packing>
                                                </child>
                                              </object>
                                              <packing>
                                                <property name="expand">True</property>
                                                <property name="fill">True</property>
                                                <property name="position">1</property>
                                              </packing>
                                            </child>
                                          </object>
                                        </child>
                                        <child type="label">
                                          <object class="GtkLabel" id="label60">
                                            <property name="visible">True</property>
                                            <property name="can_focus">False</property>
                                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                            <property name="label" translatable="yes">&lt;small&gt;&lt;b&gt;Analysis&lt;/b&gt;&lt;/small&gt;</property>
                                            <property name="use_markup">True</property>
                                          </object>
                                        </child>
                                      </object>
                                      <packing>
                                        <property name="expand">False</property>
                                        <property name="fill">True</property>
                                        <property name="padding">2</property>
                                        <property name="position">0</property>
                                      </packing>
                                    </child>
                                    <child>
                                      <object class="GtkFrame" id="frame13">
                                        <property name="visible">True</property>
                                        <property name="can_focus">False</property>
                                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                        <property name="label_xalign">0</property>
                                        <property name="shadow_type">none</property>
                                        <child>
                                          <object class="GtkBox" id="vbox27">
                                            <property name="margin-top">6</property>
                                            <property name="margin-bottom">2</property>
                                            <property name="margin-start">12</property>
                                            <property name="margin-end">2</property>
                                            <property name="orientation">vertical</property>
                                            <property name="visible">True</property>
                                            <property name="can_focus">False</property>
                                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                            <child>
                                              <object class="GtkGrid" id="table9">
                                                <property name="row-spacing">2</property>
                                                <property name="visible">True</property>
                                                <property name="can_focus">False</property>
                                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                <child>
                                                  <object class="GtkLabel" id="label73">
                                                    <property name="visible">True</property>
                                                    <property name="can_focus">False</property>
                                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                    <property name="halign">start</property>
                                                    <property name="label" translatable="yes">&lt;small&gt;Adaptive Quantization Strength:&lt;/small&gt;</property>
                                                    <property name="use_markup">True</property>
                                                  </object>
                                                  <packing>
                                                    <property name="top_attach">0</property>
                                                    <property name="left_attach">0</property>
                                                    <property name="width">1</property>
                                                    <property name="height">1</property>
                                                  </packing>
                                                </child>
                                                <child>
                                                  <object class="GtkScale" id="x264_aq_strength">
                                                    <property name="visible">True</property>
                                                    <property name="can_focus">True</property>
                                                    <property name="hexpand">True</property>
                                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                    <property name="tooltip_text" translatable="yes">Adaptive quantization controls how the encoder distributes bits across the frame.

Higher values take more bits away from edges and complex areas to improve areas with finer detail.</property>
                                                    <property name="adjustment">adjustment34</property>
                                                    <property name="restrict_to_fill_level">False</property>
                                                    <property name="value_pos">right</property>
                                                    <signal name="format-value" handler="x264_format_slider_cb" swapped="no"/>
                                                    <signal name="value-changed" handler="x264_slider_changed_cb" swapped="no"/>
                                                  </object>
                                                  <packing>
                                                    <property name="top_attach">0</property>
                                                    <property name="left_attach">1</property>
                                                    <property name="width">1</property>
                                                    <property name="height">1</property>
                                                  </packing>
                                                </child>
                                                <child>
                                                  <object class="GtkLabel" id="label82">
                                                    <property name="visible">True</property>
                                                    <property name="can_focus">False</property>
                                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                    <property name="halign">start</property>
                                                    <property name="label" translatable="yes">&lt;small&gt;Psychovisual Rate Distortion:&lt;/small&gt;</property>
                                                    <property name="use_markup">True</property>
                                                  </object>
                                                  <packing>
                                                    <property name="top_attach">1</property>
                                                    <property name="left_attach">0</property>
                                                    <property name="width">1</property>
                                                    <property name="height">1</property>
                                                  </packing>
                                                </child>
                                                <child>
                                                  <object class="GtkScale" id="x264_psy_rd">
                                                    <property name="visible">True</property>
                                                    <property name="can_focus">True</property>
                                                    <property name="hexpand">True</property>
                                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                    <property name="tooltip_text" translatable="yes">Psychovisual rate-distortion optimization takes advantage of the characteristics of human
vision to dramatically improve apparent detail and sharpness.
The effect can be made weaker or stronger by adjusting the strength.
Being an RD algorithm, it requires mode decision to be at least "6".</property>
                                                    <property name="adjustment">adjustment22</property>
                                                    <property name="restrict_to_fill_level">False</property>
                                                    <property name="value_pos">right</property>
                                                    <signal name="format-value" handler="x264_format_slider_cb" swapped="no"/>
                                                    <signal name="value-changed" handler="x264_slider_changed_cb" swapped="no"/>
                                                  </object>
                                                  <packing>
                                                    <property name="top_attach">1</property>
                                                    <property name="left_attach">1</property>
                                                    <property name="width">1</property>
                                                    <property name="height">1</property>
                                                  </packing>
                                                </child>
                                                <child>
                                                  <object class="GtkLabel" id="label83">
                                                    <property name="visible">True</property>
                                                    <property name="can_focus">False</property>
                                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                    <property name="halign">start</property>
                                                    <property name="label" translatable="yes">&lt;small&gt;Psychovisual Trellis:&lt;/small&gt;</property>
                                                    <property name="use_markup">True</property>
                                                  </object>
                                                  <packing>
                                                    <property name="top_attach">2</property>
                                                    <property name="left_attach">0</property>
                                                    <property name="width">1</property>
                                                    <property name="height">1</property>
                                                  </packing>
                                                </child>
                                                <child>
                                                  <object class="GtkScale" id="x264_psy_trell">
                                                    <property name="visible">True</property>
                                                    <property name="can_focus">True</property>
                                                    <property name="hexpand">True</property>
                                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                    <property name="tooltip_text" translatable="yes">Psychovisual trellis is an experimental algorithm to further
improve sharpness and detail retention beyond what Psychovisual RD does.

Recommended values are around 0.2, though higher values may help for very
grainy video or lower bitrate encodes.  Not recommended for cel animation
and other sharp-edged graphics.</property>
                                                    <property name="adjustment">adjustment23</property>
                                                    <property name="restrict_to_fill_level">False</property>
                                                    <property name="digits">2</property>
                                                    <property name="value_pos">right</property>
                                                    <signal name="format-value" handler="x264_format_slider_cb" swapped="no"/>
                                                    <signal name="value-changed" handler="x264_slider_changed_cb" swapped="no"/>
                                                  </object>
                                                  <packing>
                                                    <property name="top_attach">2</property>
                                                    <property name="left_attach">1</property>
                                                    <property name="width">1</property>
                                                    <property name="height">1</property>
                                                  </packing>
                                                </child>
                                              </object>
                                              <packing>
                                                <property name="expand">True</property>
                                                <property name="fill">True</property>
                                                <property name="position">0</property>
                                              </packing>
                                            </child>
                                            <child>
                                              <object class="GtkBox" id="hbox39">
                                                <property name="orientation">horizontal</property>
                                                <property name="visible">True</property>
                                                <property name="can_focus">False</property>
                                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                <child>
                                                  <object class="GtkLabel" id="label61">
                                                    <property name="visible">True</property>
                                                    <property name="can_focus">False</property>
                                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                    <property name="halign">start</property>
                                                    <property name="label" translatable="yes">Deblocking: </property>
                                                  </object>
                                                  <packing>
                                                    <property name="expand">False</property>
                                                    <property name="fill">True</property>
                                                    <property name="position">0</property>
                                                  </packing>
                                                </child>
                                                <child>
                                                  <object class="GtkSpinButton" id="x264_deblock_alpha">
                                                    <property name="visible">True</property>
                                                    <property name="can_focus">True</property>
                                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                    <property name="tooltip_markup" translatable="yes">H.264 deblocking filter.

h.264 has a built-in deblocking filter that smooths out blocking artifacts
after decoding each frame.  This not only improves visual quality, but also
helps compression significantly. The deblocking filter takes a lot of CPU power,
so if you're looking to minimize CPU requirements for video playback, disable it.

The deblocking filter has two adjustable parameters, "strength" (Alpha) and "threshold" (Beta).
The former controls how strong (or weak) the deblocker is, while the latter controls how many
(or few) edges it applies to. Lower values mean less deblocking, higher values mean more deblocking.
The default is 0 (normal strength) for both parameters.</property>
                                                    <property name="primary_icon_activatable">False</property>
                                                    <property name="secondary_icon_activatable">False</property>
                                                    <property name="adjustment">adjustment11</property>
                                                    <signal name="value-changed" handler="x264_widget_changed_cb" swapped="no"/>
                                                  </object>
                                                  <packing>
                                                    <property name="expand">False</property>
                                                    <property name="fill">True</property>
                                                    <property name="position">1</property>
                                                  </packing>
                                                </child>
                                                <child>
                                                  <object class="GtkSpinButton" id="x264_deblock_beta">
                                                    <property name="visible">True</property>
                                                    <property name="can_focus">True</property>
                                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                    <property name="tooltip_markup" translatable="yes">H.264 deblocking filter.

h.264 has a built-in deblocking filter that smooths out blocking artifacts
after decoding each frame.  This not only improves visual quality, but also
helps compression significantly. The deblocking filter takes a lot of CPU power,
so if you're looking to minimize CPU requirements for video playback, disable it.

The deblocking filter has two adjustable parameters, "strength" (Alpha) and "threshold" (Beta).
The former controls how strong (or weak) the deblocker is, while the latter controls how many
(or few) edges it applies to. Lower values mean less deblocking, higher values mean more deblocking.
The default is 0 (normal strength) for both parameters.</property>
                                                    <property name="primary_icon_activatable">False</property>
                                                    <property name="secondary_icon_activatable">False</property>
                                                    <property name="adjustment">adjustment12</property>
                                                    <signal name="value-changed" handler="x264_widget_changed_cb" swapped="no"/>
                                                  </object>
                                                  <packing>
                                                    <property name="expand">False</property>
                                                    <property name="fill">True</property>
                                                    <property name="position">2</property>
                                                  </packing>
                                                </child>
                                                <child>
                                                  <object class="GtkCheckButton" id="x264_no_dct_decimate">
                                                    <property name="label" translatable="yes">No DCT Decimate</property>
                                                    <property name="visible">True</property>
                                                    <property name="can_focus">True</property>
                                                    <property name="receives_default">False</property>
                                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                                    <property name="tooltip_text" translatable="yes">x264 normally zeroes out nearly-empty data blocks to save bits to
be better used for some other purpose in the video.  However, this can
sometimes have slight negative effects on retention of subtle grain and
dither.

Don't touch this unless you're having banding issues or other such cases
where you are having trouble keeping fine noise.</property>
                                                    <property name="halign">start</property>
                                                    <property name="active">True</property>
                                                    <property name="draw_indicator">True</property>
                                                    <signal name="toggled" handler="x264_widget_changed_cb" swapped="no"/>
                                                  </object>
                                                  <packing>
                                                    <property name="expand">True</property>
                                                    <property name="fill">True</property>
                                                    <property name="padding">20</property>
                                                    <property name="position">3</property>
                                                  </packing>
                                                </child>
                                              </object>
                                              <packing>
                                                <property name="expand">True</property>
                                                <property name="fill">True</property>
                                                <property name="position">1</property>
                                              </packing>
                                            </child>
                                          </object>
                                        </child>
                                        <child type="label">
                                          <object class="GtkLabel" id="label63">
                                            <property name="visible">True</property>
                                            <property name="can_focus">False</property>
                                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                            <property name="label" translatable="yes">&lt;small&gt;&lt;b&gt;Psychovisual&lt;/b&gt;&lt;/small&gt;</property>
                                            <property name="use_markup">True</property>
                                          </object>
                                        </child>
                                      </object>
                                      <packing>
                                        <property name="expand">False</property>
                                        <property name="fill">True</property>
                                        <property name="position">1</property>
                                      </packing>
                                    </child>
                                  </object>
                                  <packing>
                                    <property name="expand">True</property>
                                    <property name="fill">True</property>
                                    <property name="position">2</property>
                                  </packing>
                                </child>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">True</property>
                                <property name="position">0</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkFrame" id="frame11">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="label_xalign">0</property>
                                <property name="shadow_type">none</property>
                                <child>
                                  <object class="GtkScrolledWindow" id="scrolledwindow6">
                                    <property name="height_request">40</property>
                                    <property name="margin-start">12</property>
                                    <property name="margin-end">12</property>
                                    <property name="visible">True</property>
                                    <property name="can_focus">True</property>
                                    <property name="shadow_type">etched-in</property>
                                    <child>
                                      <object class="GtkTextView" id="x264Option">
                                        <property name="visible">True</property>
                                        <property name="can_focus">True</property>
                                        <property name="tooltip_text" translatable="yes">Your selected options will appear here.
You can edit these and add additional options.

Default values will not be shown. The defaults are:
ref=3:bframes=3:b-adapt=fast:direct=spatial:
b-pyramid=normal:weightp=2:me=hex:merange=16:
subme=7:partitions=p8x8,b8x8,i8x8,i4x4:8x8dct=1:
deblock=0,0:trellis=1:psy-rd=1,0:aq-strength=1.0:
no-fast-pskip=0:no-dct-decimate=0:cabac=1</property>
                                        <property name="wrap_mode">char</property>
                                        <property name="accepts_tab">False</property>
                                        <signal name="focus-out-event" handler="x264_focus_out_cb" swapped="no"/>
                                      </object>
                                    </child>
                                  </object>
                                </child>
                                <child type="label">
                                  <object class="GtkLabel" id="label54">
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                    <property name="label" translatable="yes">&lt;small&gt;&lt;b&gt;Current x264 Advanced Option String&lt;/b&gt;&lt;/small&gt;</property>
                                    <property name="use_markup">True</property>
                                  </object>
                                </child>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">True</property>
                                <property name="padding">2</property>
                                <property name="position">1</property>
                              </packing>
                            </child>
                          </object>
                          <packing>
                            <property name="expand">True</property>
                            <property name="fill">True</property>
                            <property name="position">0</property>
                          </packing>
                        </child>
                      </object>
                      <packing>
                        <property name="position">8</property>
                        <property name="name">advanced_video_tab</property>
                        <property name="title" translatable="yes">Advanced Video</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkBox" id="chapters_tab">
                        <property name="orientation">vertical</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <child>
                          <object class="GtkBox" id="hbox30">
                            <property name="orientation">horizontal</property>
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <child>
                              <object class="GtkCheckButton" id="ChapterMarkers">
                                <property name="label" translatable="yes">Chapter Markers</property>
                                <property name="visible">True</property>
                                <property name="can_focus">True</property>
                                <property name="receives_default">False</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="tooltip_text" translatable="yes">Add chapter markers to output file.</property>
                                <property name="halign">start</property>
                                <property name="draw_indicator">True</property>
                                <signal name="toggled" handler="chapter_markers_changed_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">True</property>
                                <property name="position">0</property>
                              </packing>
                            </child>
                            <child>
                              <placeholder/>
                            </child>
                            <child>
                              <placeholder/>
                            </child>
                          </object>
                          <packing>
                            <property name="expand">False</property>
                            <property name="fill">True</property>
                            <property name="position">0</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkScrolledWindow" id="scrolledwindow3">
                            <property name="visible">True</property>
                            <property name="can_focus">True</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <child>
                              <object class="GtkTreeView" id="chapters_list">
                                <property name="visible">True</property>
                                <property name="can_focus">True</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="enable_search">False</property>
                                <child internal-child="selection">
                                  <object class="GtkTreeSelection" id="treeview-selection3"/>
                                </child>
                              </object>
                            </child>
                          </object>
                          <packing>
                            <property name="expand">True</property>
                            <property name="fill">True</property>
                            <property name="position">1</property>
                          </packing>
                        </child>
                      </object>
                      <packing>
                        <property name="position">9</property>
                        <property name="name">chapters_tab</property>
                        <property name="title" translatable="yes">Chapters</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkGrid" id="metadata_tab">
                        <property name="row-spacing">2</property>
                        <property name="margin-top">6</property>
                        <property name="margin-bottom">6</property>
                        <property name="margin-start">24</property>
                        <property name="margin-end">24</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                        <property name="column_spacing">5</property>
                        <child>
                          <object class="GtkLabel" id="tag_title_label">
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="halign">end</property>
                            <property name="label" translatable="yes">Title:</property>
                            <property name="use_markup">True</property>
                          </object>
                          <packing>
                            <property name="top_attach">0</property>
                            <property name="left_attach">0</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkEntry" id="MetaName">
                            <property name="visible">True</property>
                            <property name="can_focus">True</property>
                            <property name="hexpand">True</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="max_length">80</property>
                            <property name="activates_default">True</property>
                            <property name="width_chars">50</property>
                            <property name="truncate_multiline">True</property>
                            <property name="primary_icon_activatable">False</property>
                            <property name="secondary_icon_activatable">False</property>
                            <signal name="changed" handler="meta_name_changed_cb" swapped="no"/>
                          </object>
                          <packing>
                            <property name="top_attach">0</property>
                            <property name="left_attach">1</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkLabel" id="tag_actors_label">
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="halign">end</property>
                            <property name="label" translatable="yes">Actors:</property>
                            <property name="use_markup">True</property>
                          </object>
                          <packing>
                            <property name="top_attach">1</property>
                            <property name="left_attach">0</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkEntry" id="MetaArtist">
                            <property name="visible">True</property>
                            <property name="can_focus">True</property>
                            <property name="hexpand">True</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="max_length">80</property>
                            <property name="activates_default">True</property>
                            <property name="width_chars">50</property>
                            <property name="truncate_multiline">True</property>
                            <property name="primary_icon_activatable">False</property>
                            <property name="secondary_icon_activatable">False</property>
                            <signal name="changed" handler="meta_artist_changed_cb" swapped="no"/>
                          </object>
                          <packing>
                            <property name="top_attach">1</property>
                            <property name="left_attach">1</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkLabel" id="tag_director_label">
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="halign">end</property>
                            <property name="label" translatable="yes">Director:</property>
                            <property name="use_markup">True</property>
                          </object>
                          <packing>
                            <property name="top_attach">2</property>
                            <property name="left_attach">0</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkEntry" id="MetaAlbumArtist">
                            <property name="visible">True</property>
                            <property name="can_focus">True</property>
                            <property name="hexpand">True</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="max_length">80</property>
                            <property name="activates_default">True</property>
                            <property name="width_chars">50</property>
                            <property name="truncate_multiline">True</property>
                            <property name="primary_icon_activatable">False</property>
                            <property name="secondary_icon_activatable">False</property>
                            <signal name="changed" handler="meta_album_artist_changed_cb" swapped="no"/>
                          </object>
                          <packing>
                            <property name="top_attach">2</property>
                            <property name="left_attach">1</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkLabel" id="tag_release_date_label">
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="halign">end</property>
                            <property name="label" translatable="yes">Release Date:</property>
                            <property name="use_markup">True</property>
                          </object>
                          <packing>
                            <property name="top_attach">3</property>
                            <property name="left_attach">0</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkEntry" id="MetaReleaseDate">
                            <property name="visible">True</property>
                            <property name="can_focus">True</property>
                            <property name="hexpand">True</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="max_length">80</property>
                            <property name="activates_default">True</property>
                            <property name="width_chars">50</property>
                            <property name="truncate_multiline">True</property>
                            <property name="primary_icon_activatable">False</property>
                            <property name="secondary_icon_activatable">False</property>
                            <signal name="changed" handler="meta_release_date_changed_cb" swapped="no"/>
                          </object>
                          <packing>
                            <property name="top_attach">3</property>
                            <property name="left_attach">1</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkLabel" id="tag_comment_label">
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="halign">end</property>
                            <property name="label" translatable="yes">Comment:</property>
                            <property name="use_markup">True</property>
                          </object>
                          <packing>
                            <property name="top_attach">4</property>
                            <property name="left_attach">0</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkEntry" id="MetaComment">
                            <property name="visible">True</property>
                            <property name="can_focus">True</property>
                            <property name="hexpand">True</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="max_length">80</property>
                            <property name="activates_default">True</property>
                            <property name="width_chars">50</property>
                            <property name="truncate_multiline">True</property>
                            <property name="primary_icon_activatable">False</property>
                            <property name="secondary_icon_activatable">False</property>
                            <signal name="changed" handler="meta_comment_changed_cb" swapped="no"/>
                          </object>
                          <packing>
                            <property name="top_attach">4</property>
                            <property name="left_attach">1</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkLabel" id="tag_genre_label">
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="halign">end</property>
                            <property name="label" translatable="yes">Genre:</property>
                            <property name="use_markup">True</property>
                          </object>
                          <packing>
                            <property name="top_attach">5</property>
                            <property name="left_attach">0</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkEntry" id="MetaGenre">
                            <property name="visible">True</property>
                            <property name="can_focus">True</property>
                            <property name="hexpand">True</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="max_length">80</property>
                            <property name="activates_default">True</property>
                            <property name="width_chars">50</property>
                            <property name="truncate_multiline">True</property>
                            <property name="primary_icon_activatable">False</property>
                            <property name="secondary_icon_activatable">False</property>
                            <signal name="changed" handler="meta_genre_changed_cb" swapped="no"/>
                          </object>
                          <packing>
                            <property name="top_attach">5</property>
                            <property name="left_attach">1</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkLabel" id="tag_description_label">
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="halign">end</property>
                            <property name="label" translatable="yes">Description:</property>
                            <property name="use_markup">True</property>
                          </object>
                          <packing>
                            <property name="top_attach">6</property>
                            <property name="left_attach">0</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkEntry" id="MetaDescription">
                            <property name="visible">True</property>
                            <property name="can_focus">True</property>
                            <property name="hexpand">True</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="max_length">80</property>
                            <property name="activates_default">True</property>
                            <property name="width_chars">50</property>
                            <property name="truncate_multiline">True</property>
                            <property name="primary_icon_activatable">False</property>
                            <property name="secondary_icon_activatable">False</property>
                            <signal name="changed" handler="meta_description_changed_cb" swapped="no"/>
                          </object>
                          <packing>
                            <property name="top_attach">6</property>
                            <property name="left_attach">1</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkLabel" id="tag_long_description_label">
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                            <property name="halign">end</property>
                            <property name="label" translatable="yes">Plot:</property>
                            <property name="use_markup">True</property>
                          </object>
                          <packing>
                            <property name="top_attach">7</property>
                            <property name="left_attach">0</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkScrolledWindow" id="MetaLongDescriptionScroll">
                            <property name="height_request">40</property>
                            <property name="visible">True</property>
                            <property name="can_focus">True</property>
                            <property name="hexpand">True</property>
                            <property name="vexpand">True</property>
                            <property name="shadow_type">etched-in</property>
                            <child>
                              <object class="GtkTextView" id="MetaLongDescription">
                                <property name="visible">True</property>
                                <property name="can_focus">True</property>
                                <property name="wrap_mode">char</property>
                                <property name="accepts_tab">False</property>
                                <signal name="focus-out-event" handler="meta_focus_out_cb" swapped="no"/>
                              </object>
                            </child>
                          </object>
                          <packing>
                            <property name="top_attach">7</property>
                            <property name="left_attach">1</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
                        </child>
                      </object>
                      <packing>
                        <property name="position">10</property>
                        <property name="name">metadata_tab</property>
                        <property name="title" translatable="yes">Tags</property>
                      </packing>
                    </child>
                  </object>
                  <packing>
                    <property name="expand">True</property>
                    <property name="fill">True</property>
                    <property name="position">1</property>
                  </packing>
                </child>
              </object>
              <packing>
                <property name="position">0</property>
                <property name="name">settings_tab</property>
                <property name="title" translatable="yes">Settings</property>
              </packing>
            </child>
            <child>
              <object class="GtkBox" id="queue_tab">
                <property name="orientation">vertical</property>
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <child>
                  <object class="GtkSeparator" id="sep2">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                  </object>
                  <packing>
                    <property name="position">0</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkToolbar" id="queue_toolbar">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <child>
                      <object class="GtkToolButton" id="queue_edit">
                        <property name="visible">True</property>
                        <property name="sensitive">False</property>
                        <property name="can_focus">False</property>
                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                        <property name="is_important">True</property>
                        <property name="label" translatable="yes">Edit</property>
                        <property name="icon_name">hb-edit</property>
                        <signal name="clicked" handler="queue_edit_clicked_cb" swapped="no"/>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="homogeneous">True</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkToolButton" id="queue_reload">
                        <property name="visible">True</property>
                        <property name="sensitive">False</property>
                        <property name="can_focus">False</property>
                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                        <property name="is_important">True</property>
                        <property name="label" translatable="yes">Reload</property>
                        <property name="icon_name">view-refresh</property>
                        <property name="tooltip_text" translatable="yes">Mark selected queue entry as pending.
Resets the queue job to pending and ready to run again.</property>
                        <signal name="clicked" handler="queue_reload_clicked_cb" swapped="no"/>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="homogeneous">True</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkToolButton" id="queue_reload_all">
                        <property name="visible">True</property>
                        <property name="sensitive">True</property>
                        <property name="can_focus">False</property>
                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                        <property name="is_important">True</property>
                        <property name="label" translatable="yes">Reload All</property>
                        <property name="icon_name">view-refresh</property>
                        <property name="tooltip_text" translatable="yes">Mark all queue entries as pending.
Resets all queue jobs to pending and ready to run again.</property>
                        <signal name="clicked" handler="queue_reload_all_clicked_cb" swapped="no"/>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="homogeneous">True</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkToolButton" id="queue_delete_all">
                        <property name="visible">True</property>
                        <property name="sensitive">True</property>
                        <property name="can_focus">False</property>
                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                        <property name="is_important">True</property>
                        <property name="label" translatable="yes">Delete All</property>
                        <property name="icon_name">edit-delete</property>
                        <property name="tooltip_text" translatable="yes">Delete all items in the queue.</property>
                        <signal name="clicked" handler="queue_delete_all_clicked_cb" swapped="no"/>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="homogeneous">True</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkToolButton" id="queue_save">
                        <property name="visible">True</property>
                        <property name="sensitive">True</property>
                        <property name="can_focus">False</property>
                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                        <property name="is_important">True</property>
                        <property name="label" translatable="yes">Save Queue</property>
                        <property name="icon_name">document-save-as</property>
                        <property name="tooltip_text" translatable="yes">Save the current queue of encode jobs to a file.
This file may be reloaded at a later time to edit your jobs and re-encode.</property>
                        <signal name="clicked" handler="queue_save_clicked_cb" swapped="no"/>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="homogeneous">True</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkToolButton" id="queue_open">
                        <property name="visible">True</property>
                        <property name="sensitive">True</property>
                        <property name="can_focus">False</property>
                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                        <property name="is_important">True</property>
                        <property name="label" translatable="yes">Load Queue File</property>
                        <property name="icon_name">document-open</property>
                        <property name="tooltip_text" translatable="yes">Load a previously saved queue file.</property>
                        <signal name="clicked" handler="queue_open_clicked_cb" swapped="no"/>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="homogeneous">True</property>
                      </packing>
                    </child>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="fill">True</property>
                    <property name="position">1</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkScrolledWindow" id="scrolledwindow2">
                    <property name="visible">True</property>
                    <property name="can_focus">True</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <child>
                      <object class="GtkTreeView" id="queue_list">
                        <property name="width_request">900</property>
                        <property name="height_request">300</property>
                        <property name="visible">True</property>
                        <property name="can_focus">True</property>
                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                        <property name="headers_visible">False</property>
                        <property name="headers_clickable">False</property>
                        <signal name="key-press-event" handler="queue_key_press_cb" swapped="no"/>
                        <child internal-child="selection">
                          <object class="GtkTreeSelection" id="treeview-selection5"/>
                        </child>
                      </object>
                    </child>
                  </object>
                  <packing>
                    <property name="expand">True</property>
                    <property name="fill">True</property>
                    <property name="position">2</property>
                  </packing>
                </child>
              </object>
              <packing>
                <property name="position">1</property>
                <property name="name">queue_tab</property>
                <property name="title" translatable="yes">Queue</property>
              </packing>
            </child>
          </object>
          <packing>
            <property name="expand">True</property>
            <property name="fill">True</property>
            <property name="position">2</property>
          </packing>
        </child>
        <child>
          <object class="GtkBox" id="hbox46">
            <property name="orientation">horizontal</property>
            <property name="visible">True</property>
            <property name="can_focus">False</property>
            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
            <property name="halign">start</property>
            <property name="valign">end</property>
            <property name="margin-top">4</property>
            <property name="margin-bottom">4</property>
            <property name="margin-start">12</property>
            <property name="margin-end">12</property>
            <property name="spacing">4</property>
            <child>
              <object class="GtkLabel" id="work_status">
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <property name="halign">start</property>
              </object>
              <packing>
                <property name="expand">True</property>
                <property name="fill">True</property>
                <property name="position">0</property>
              </packing>
            </child>
            <child>
              <object class="GtkLabel" id="pending_status">
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <property name="halign">end</property>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">True</property>
                <property name="position">1</property>
              </packing>
            </child>
          </object>
          <packing>
            <property name="expand">False</property>
            <property name="fill">True</property>
            <property name="position">3</property>
          </packing>
        </child>
        <child>
          <object class="GtkProgressBar" id="progressbar">
            <property name="height_request">10</property>
            <property name="can_focus">False</property>
            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
            <property name="margin-bottom">6</property>
            <property name="margin-start">12</property>
            <property name="margin-end">12</property>
          </object>
          <packing>
            <property name="expand">False</property>
            <property name="fill">True</property>
            <property name="position">4</property>
          </packing>
        </child>
      </object>
    </child>
  </object>
  <object class="GtkAdjustment" id="min_title_adj">
    <property name="upper">7200</property>
    <property name="value">10</property>
    <property name="step_increment">5</property>
    <property name="page_increment">10</property>
  </object>
  <object class="GtkAdjustment" id="preview_count_adj">
    <property name="lower">5</property>
    <property name="upper">60</property>
    <property name="value">10</property>
    <property name="step_increment">5</property>
    <property name="page_increment">10</property>
  </object>
  <object class="GtkDialog" id="titla_add_multiple_dialog">
    <property name="transient_for">hb_window</property>
    <property name="can_focus">False</property>
    <property name="type_hint">dialog</property>
    <child internal-child="vbox">
      <object class="GtkBox" id="dialog_title_add_multiple_vbox1">
        <property name="can_focus">False</property>
        <property name="orientation">vertical</property>
        <property name="spacing">2</property>
        <child internal-child="action_area">
          <object class="GtkButtonBox" id="dialog_title_add_multiple_action_area1">
            <property name="can_focus">False</property>
            <property name="layout_style">end</property>
            <child>
              <object class="GtkButton" id="title_add_multiple_cancel">
                <property name="label" translatable="yes">Cancel</property>
                <property name="image">gtk-cancel</property>
                <property name="visible">True</property>
                <property name="can_focus">True</property>
                <property name="receives_default">True</property>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">True</property>
                <property name="position">0</property>
              </packing>
            </child>
            <child>
              <object class="GtkButton" id="title_add_multiple_ok">
                <property name="label" translatable="yes">OK</property>
                <property name="image">gtk-ok</property>
                <property name="visible">True</property>
                <property name="can_focus">True</property>
                <property name="receives_default">True</property>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">True</property>
                <property name="position">1</property>
              </packing>
            </child>
          </object>
          <packing>
            <property name="expand">False</property>
            <property name="fill">True</property>
            <property name="pack_type">end</property>
            <property name="position">0</property>
          </packing>
        </child>
        <child>
          <object class="GtkGrid" id="title_add_multiple_grid1">
            <property name="visible">True</property>
            <property name="can_focus">False</property>
            <property name="margin-start">12</property>
            <property name="margin-end">12</property>
            <property name="margin_top">12</property>
            <property name="column_spacing">6</property>
            <property name="row-spacing">2</property>
            <child>
              <object class="GtkScrolledWindow" id="title_add_multiple_scrolledwindow">
                <property name="visible">True</property>
                <property name="can_focus">True</property>
                <property name="hscrollbar_policy">GTK_POLICY_NEVER</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <property name="min_content_height">400</property>
                <child>
                  <object class="GtkListBox" id="title_add_multiple_list">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="vexpand">True</property>
                    <property name="hexpand">True</property>
                    <property name="selection_mode">none</property>
                    <property name="activate_on_single_click">False</property>
                  </object>
                </child>
              </object>
              <packing>
                <property name="left_attach">0</property>
                <property name="top_attach">1</property>
                <property name="width">3</property>
                <property name="height">2</property>
              </packing>
            </child>
            <child>
              <object class="GtkBox" id="title_add_multiple_hbox1">
                <property name="orientation">horizontal</property>
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="spacing">6</property>
                <child>
                  <object class="GtkCheckButton" id="title_add_multiple_select_all">
                    <property name="label" translatable="yes">Select All</property>
                    <property name="visible">True</property>
                    <property name="can_focus">True</property>
                    <property name="receives_default">False</property>
                    <property name="tooltip_text" translatable="yes">Mark all titles for adding to the queue</property>
                    <property name="halign">start</property>
                    <property name="vexpand">False</property>
                    <property name="halign">start</property>
                    <property name="draw_indicator">True</property>
                    <signal name="toggled" handler="title_add_multiple_select_all_cb" swapped="no"/>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="position">0</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkCheckButton" id="title_add_multiple_clear_all">
                    <property name="label" translatable="yes">Clear All</property>
                    <property name="visible">True</property>
                    <property name="can_focus">True</property>
                    <property name="receives_default">False</property>
                    <property name="tooltip_text" translatable="yes">Unmark all titles</property>
                    <property name="halign">start</property>
                    <property name="vexpand">False</property>
                    <property name="halign">start</property>
                    <property name="draw_indicator">True</property>
                    <signal name="toggled" handler="title_add_multiple_clear_all_cb" swapped="no"/>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="position">1</property>
                  </packing>
                </child>
              </object>
              <packing>
                <property name="left_attach">0</property>
                <property name="top_attach">0</property>
                <property name="width">2</property>
                <property name="height">1</property>
              </packing>
            </child>
            <child>
              <object class="GtkInfoBar" id="title_add_multiple_infobar">
                <property name="visible">True</property>
                <property name="app_paintable">True</property>
                <property name="can_focus">False</property>
                <property name="message_type">info</property>
                <child internal-child="action_area">
                  <object class="GtkButtonBox" id="title_add_multiple_infobar-action_area1">
                    <property name="can_focus">False</property>
                    <property name="spacing">6</property>
                    <property name="layout_style">end</property>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="fill">False</property>
                    <property name="position">0</property>
                  </packing>
                </child>
                <child internal-child="content_area">
                  <object class="GtkBox" id="title_add_multiple_infobar_content_area">
                    <property name="can_focus">False</property>
                    <property name="spacing">16</property>
                    <child>
                      <object class="GtkLabel" id="title_add_multiple_label1">
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="label" translatable="yes">Destination files OK.  No duplicates detected.</property>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="fill">True</property>
                        <property name="position">0</property>
                      </packing>
                    </child>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="fill">False</property>
                    <property name="position">0</property>
                  </packing>
                </child>
              </object>
              <packing>
                <property name="left_attach">0</property>
                <property name="top_attach">3</property>
                <property name="width">3</property>
                <property name="height">1</property>
              </packing>
            </child>
            <child>
              <placeholder/>
            </child>
          </object>
          <packing>
            <property name="expand">False</property>
            <property name="fill">True</property>
            <property name="position">1</property>
          </packing>
        </child>
      </object>
    </child>
    <action-widgets>
      <action-widget response="0">title_add_multiple_cancel</action-widget>
      <action-widget response="-5">title_add_multiple_ok</action-widget>
    </action-widgets>
  </object>
  <object class="GtkDialog" id="prefs_dialog">
    <property name="transient_for">hb_window</property>
    <property name="can_focus">False</property>
    <property name="border_width">5</property>
    <property name="title" translatable="yes">Preferences</property>
    <property name="modal">True</property>
    <property name="window_position">center-on-parent</property>
    <property name="type_hint">dialog</property>
    <property name="skip_taskbar_hint">True</property>
    <property name="skip_pager_hint">True</property>
    <signal name="delete-event" handler="gtk_widget_hide_on_delete" swapped="no"/>
    <child internal-child="vbox">
      <object class="GtkBox" id="dialog-vbox6">
        <property name="visible">True</property>
        <property name="can_focus">False</property>
        <property name="spacing">2</property>
        <child internal-child="action_area">
          <object class="GtkButtonBox" id="dialog-action_area5">
            <property name="visible">True</property>
            <property name="can_focus">False</property>
            <property name="layout_style">end</property>
            <child>
              <object class="GtkButton" id="pref_ok">
                <property name="label" translatable="yes">OK</property>
                <property name="image">gtk-ok</property>
                <property name="visible">True</property>
                <property name="can_focus">True</property>
                <property name="receives_default">True</property>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">False</property>
                <property name="position">0</property>
              </packing>
            </child>
          </object>
          <packing>
            <property name="expand">False</property>
            <property name="fill">True</property>
            <property name="pack_type">end</property>
            <property name="position">0</property>
          </packing>
        </child>
        <child>
          <object class="GtkBox" id="hbox59">
            <property name="orientation">horizontal</property>
            <property name="visible">True</property>
            <property name="can_focus">False</property>
            <child>
              <object class="GtkBox" id="vbox20">
                <property name="orientation">vertical</property>
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <child>
                  <object class="GtkEventBox" id="eventbox1">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="events">GDK_BUTTON_MOTION_MASK | GDK_BUTTON_PRESS_MASK | GDK_STRUCTURE_MASK</property>
                    <property name="above_child">True</property>
                    <signal name="button-press-event" handler="easter_egg_cb" swapped="no"/>
                    <child>
                      <object class="GtkImage" id="image3">
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                        <property name="pixel_size">64</property>
                        <property name="icon_name">hb-icon</property>
                      </object>
                    </child>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="fill">True</property>
                    <property name="position">0</property>
                  </packing>
                </child>
                <child>
                  <placeholder/>
                </child>
              </object>
              <packing>
                <property name="expand">True</property>
                <property name="fill">True</property>
                <property name="position">0</property>
              </packing>
            </child>
            <child>
              <object class="GtkNotebook" id="PrefsNotebook">
                <property name="visible">True</property>
                <property name="can_focus">True</property>
                <property name="show_border">False</property>
                <property name="margin-start">12</property>
                <child>
                  <object class="GtkBox" id="vbox42">
                    <property name="orientation">vertical</property>
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <child>
                      <object class="GtkBox" id="check_updates_box">
                        <property name="orientation">horizontal</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="spacing">4</property>
                        <property name="margin-top">6</property>
                        <property name="margin-bottom">6</property>
                        <property name="margin-start">12</property>
                        <child>
                          <object class="GtkComboBox" id="check_updates">
                            <property name="valign">GTK_ALIGN_CENTER</property>
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <signal name="changed" handler="pref_changed_cb" swapped="no"/>
                          </object>
                          <packing>
                            <property name="expand">False</property>
                            <property name="fill">True</property>
                            <property name="position">0</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkLabel" id="label74">
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="label" translatable="yes">Automatically check for updates</property>
                            <property name="use_markup">True</property>
                          </object>
                          <packing>
                            <property name="expand">False</property>
                            <property name="fill">True</property>
                            <property name="position">1</property>
                          </packing>
                        </child>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="fill">True</property>
                        <property name="position">0</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkBox" id="hbox82">
                        <property name="orientation">horizontal</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="spacing">4</property>
                        <property name="margin-top">6</property>
                        <property name="margin-bottom">6</property>
                        <property name="margin-start">12</property>
                        <property name="margin-end">12</property>
                        <child>
                          <object class="GtkComboBox" id="WhenComplete">
                            <property name="visible">True</property>
                            <property name="valign">GTK_ALIGN_CENTER</property>
                            <property name="can_focus">False</property>
                            <signal name="changed" handler="pref_changed_cb" swapped="no"/>
                          </object>
                          <packing>
                            <property name="expand">False</property>
                            <property name="fill">True</property>
                            <property name="position">0</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkLabel" id="labela1">
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="label" translatable="yes">When all encodes are complete</property>
                            <property name="use_markup">True</property>
                          </object>
                          <packing>
                            <property name="expand">False</property>
                            <property name="fill">True</property>
                            <property name="position">1</property>
                          </packing>
                        </child>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="fill">True</property>
                        <property name="position">1</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkBox" id="vbox5">
                        <property name="orientation">vertical</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="margin-top">6</property>
                        <property name="margin-bottom">6</property>
                        <property name="margin-start">12</property>
                        <child>
                          <object class="GtkCheckButton" id="auto_name">
                            <property name="label" translatable="yes">Use automatic naming (uses modified source name)</property>
                            <property name="visible">True</property>
                            <property name="can_focus">True</property>
                            <property name="receives_default">False</property>
                            <property name="halign">start</property>
                            <property name="draw_indicator">True</property>
                            <signal name="toggled" handler="pref_changed_cb" swapped="no"/>
                          </object>
                          <packing>
                            <property name="expand">False</property>
                            <property name="fill">True</property>
                            <property name="position">0</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkBox" id="autoname_box">
                            <property name="orientation">horizontal</property>
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="spacing">4</property>
                            <property name="margin-start">18</property>
                            <property name="margin-end">8</property>
                            <child>
                              <object class="GtkLabel" id="auto_name_template_label">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="label" translatable="yes">Auto-Name Template</property>
                                <property name="use_markup">True</property>

                                <property name="halign">end</property>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">True</property>
                                <property name="position">0</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkEntry" id="auto_name_template">
                                <property name="tooltip_text" translatable="yes">Available Options: {source} {title} {preset} {chapters} {date} {time} {quality} {bitrate}</property>
                                <property name="visible">True</property>
                                <property name="can_focus">True</property>
                                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                                <property name="activates_default">True</property>
                                <property name="width_chars">40</property>
                                <property name="truncate_multiline">True</property>
                                <property name="primary_icon_activatable">False</property>
                                <property name="secondary_icon_activatable">False</property>
                                <signal name="changed" handler="pref_changed_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">True</property>
                                <property name="position">1</property>
                              </packing>
                            </child>
                          </object>
                          <packing>
                            <property name="expand">False</property>
                            <property name="fill">True</property>
                            <property name="position">1</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkCheckButton" id="UseM4v">
                            <property name="label" translatable="yes">Use iPod/iTunes friendly (.m4v) file extension for MP4</property>
                            <property name="visible">True</property>
                            <property name="can_focus">True</property>
                            <property name="receives_default">False</property>
                            <property name="halign">start</property>
                            <property name="draw_indicator">True</property>
                            <signal name="toggled" handler="use_m4v_changed_cb" swapped="no"/>
                          </object>
                          <packing>
                            <property name="expand">False</property>
                            <property name="fill">True</property>
                            <property name="position">2</property>
                          </packing>
                        </child>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="fill">True</property>
                        <property name="position">2</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkBox" id="hbox66">
                        <property name="orientation">horizontal</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="spacing">4</property>
                        <property name="margin-top">6</property>
                        <property name="margin-bottom">6</property>
                        <property name="margin-start">12</property>
                        <child>
                          <object class="GtkSpinButton" id="preview_count">
                            <property name="visible">True</property>
                            <property name="can_focus">True</property>
                            <property name="max_length">2</property>
                            <property name="width-chars">6</property>
                            <property name="invisible_char">●</property>
                            <property name="shadow_type">none</property>
                            <property name="primary_icon_activatable">False</property>
                            <property name="secondary_icon_activatable">False</property>
                            <property name="adjustment">preview_count_adj</property>
                            <property name="numeric">True</property>
                            <signal name="value-changed" handler="pref_changed_cb" swapped="no"/>
                          </object>
                          <packing>
                            <property name="expand">False</property>
                            <property name="fill">True</property>
                            <property name="position">0</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkLabel" id="label77">
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="label" translatable="yes">Number of previews</property>
                            <property name="use_markup">True</property>
                          </object>
                          <packing>
                            <property name="expand">False</property>
                            <property name="fill">True</property>
                            <property name="position">1</property>
                          </packing>
                        </child>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="fill">True</property>
                        <property name="position">3</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkBox" id="hbox60">
                        <property name="orientation">horizontal</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="spacing">4</property>
                        <property name="margin-top">6</property>
                        <property name="margin-bottom">6</property>
                        <property name="margin-start">12</property>
                        <child>
                          <object class="GtkSpinButton" id="MinTitleDuration">
                            <property name="visible">True</property>
                            <property name="can_focus">True</property>
                            <property name="max-length">4</property>
                            <property name="width-chars">6</property>
                            <property name="invisible_char">●</property>
                            <property name="shadow_type">none</property>
                            <property name="primary_icon_activatable">False</property>
                            <property name="secondary_icon_activatable">False</property>
                            <property name="adjustment">min_title_adj</property>
                            <property name="numeric">True</property>
                            <signal name="value-changed" handler="pref_changed_cb" swapped="no"/>
                          </object>
                          <packing>
                            <property name="expand">False</property>
                            <property name="fill">True</property>
                            <property name="position">0</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkLabel" id="label70">
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="label" translatable="yes">Filter short titles (seconds)</property>
                            <property name="use_markup">True</property>
                          </object>
                          <packing>
                            <property name="expand">False</property>
                            <property name="fill">True</property>
                            <property name="position">1</property>
                          </packing>
                        </child>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="fill">True</property>
                        <property name="position">4</property>
                      </packing>
                    </child>
                  </object>
                </child>
                <child type="tab">
                  <object class="GtkLabel" id="label2">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="label" translatable="yes">General</property>
                  </object>
                  <packing>
                    <property name="tab_fill">False</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkBox" id="vbox1">
                    <property name="orientation">vertical</property>
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="margin-top">6</property>
                    <property name="margin-bottom">6</property>
                    <property name="margin-start">12</property>
                    <child>
                      <object class="GtkGrid" id="AdvancedPrefsTable">
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                        <property name="row-spacing">2</property>
                        <child>
                          <object class="GtkBox" id="hbox6">
                            <property name="orientation">horizontal</property>
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="spacing">4</property>
                            <child>
                              <object class="GtkComboBox" id="VideoQualityGranularity">
                                <property name="valign">GTK_ALIGN_CENTER</property>
                                <property name="width_request">55</property>
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <signal name="changed" handler="vqual_granularity_changed_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">True</property>
                                <property name="position">0</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkLabel" id="label85">
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="halign">start</property>
                                <property name="label" translatable="yes">Constant Quality fractional granularity</property>
                              </object>
                              <packing>
                                <property name="expand">True</property>
                                <property name="fill">True</property>
                                <property name="position">1</property>
                              </packing>
                            </child>
                          </object>
                          <packing>
                            <property name="top_attach">0</property>
                            <property name="left_attach">0</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkCheckButton" id="use_dvdnav">
                            <property name="label" translatable="yes">Use dvdnav (instead of libdvdread)</property>
                            <property name="visible">True</property>
                            <property name="can_focus">True</property>
                            <property name="receives_default">False</property>
                            <property name="halign">start</property>
                            <property name="draw_indicator">True</property>
                            <signal name="toggled" handler="pref_changed_cb" swapped="no"/>
                          </object>
                          <packing>
                            <property name="top_attach">1</property>
                            <property name="left_attach">0</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkBox" id="vbox2">
                            <property name="orientation">vertical</property>
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="spacing">2</property>
                            <child>
                              <object class="GtkCheckButton" id="EncodeLogLocation">
                                <property name="label" translatable="yes">Put individual encode logs in same location as movie</property>
                                <property name="visible">True</property>
                                <property name="can_focus">True</property>
                                <property name="receives_default">False</property>
                                <property name="halign">start</property>
                                <property name="draw_indicator">True</property>
                                <signal name="toggled" handler="pref_changed_cb" swapped="no"/>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">True</property>
                                <property name="position">0</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkBox" id="hbox50">
                                <property name="orientation">horizontal</property>
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="spacing">4</property>
                                <property name="margin-start">21</property>
                                <child>
                                  <object class="GtkComboBox" id="LoggingLevel">
                                    <property name="valign">GTK_ALIGN_CENTER</property>
                                    <property name="width_request">55</property>
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <signal name="changed" handler="log_level_changed_cb" swapped="no"/>
                                  </object>
                                  <packing>
                                    <property name="expand">False</property>
                                    <property name="fill">True</property>
                                    <property name="position">0</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkLabel" id="label1">
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="halign">start</property>
                                    <property name="label" translatable="yes">Activity Log Verbosity Level</property>
                                  </object>
                                  <packing>
                                    <property name="expand">True</property>
                                    <property name="fill">True</property>
                                    <property name="position">1</property>
                                  </packing>
                                </child>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">True</property>
                                <property name="position">1</property>
                              </packing>
                            </child>
                            <child>
                              <object class="GtkBox" id="hbox83">
                                <property name="orientation">horizontal</property>
                                <property name="visible">True</property>
                                <property name="can_focus">False</property>
                                <property name="spacing">4</property>
                                <property name="margin-start">21</property>
                                <child>
                                  <object class="GtkComboBox" id="LogLongevity">
                                    <property name="valign">GTK_ALIGN_CENTER</property>
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <signal name="changed" handler="pref_changed_cb" swapped="no"/>
                                  </object>
                                  <packing>
                                    <property name="expand">False</property>
                                    <property name="fill">True</property>
                                    <property name="position">0</property>
                                  </packing>
                                </child>
                                <child>
                                  <object class="GtkLabel" id="labela2">
                                    <property name="visible">True</property>
                                    <property name="can_focus">False</property>
                                    <property name="halign">start</property>
                                    <property name="label" translatable="yes">Activity Log Longevity</property>
                                  </object>
                                  <packing>
                                    <property name="expand">True</property>
                                    <property name="fill">True</property>
                                    <property name="position">1</property>
                                  </packing>
                                </child>
                              </object>
                              <packing>
                                <property name="expand">False</property>
                                <property name="fill">True</property>
                                <property name="position">2</property>
                              </packing>
                            </child>
                          </object>
                          <packing>
                            <property name="top_attach">2</property>
                            <property name="left_attach">0</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkCheckButton" id="reduce_hd_preview">
                            <property name="label" translatable="yes">Scale down High Definition previews</property>
                            <property name="visible">True</property>
                            <property name="can_focus">True</property>
                            <property name="receives_default">False</property>
                            <property name="halign">start</property>
                            <property name="draw_indicator">True</property>
                            <signal name="toggled" handler="pref_changed_cb" swapped="no"/>
                          </object>
                          <packing>
                            <property name="top_attach">3</property>
                            <property name="left_attach">0</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkCheckButton" id="AutoScan">
                            <property name="label" translatable="yes">Automatically Scan DVD when loaded</property>
                            <property name="visible">True</property>
                            <property name="can_focus">True</property>
                            <property name="receives_default">False</property>
                            <property name="tooltip_text" translatable="yes">Scans the DVD whenever a new disc is loaded</property>
                            <property name="halign">start</property>
                            <property name="draw_indicator">True</property>
                            <signal name="toggled" handler="pref_changed_cb" swapped="no"/>
                          </object>
                          <packing>
                            <property name="top_attach">4</property>
                            <property name="left_attach">0</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkCheckButton" id="HideAdvancedVideoSettings">
                            <property name="label" translatable="yes">Hide Advanced Video Options Tab</property>
                            <property name="visible">True</property>
                            <property name="can_focus">True</property>
                            <property name="receives_default">False</property>
                            <property name="tooltip_text" translatable="yes">Use advanced video options at your own risk.
We recommend that you use the controls available
on the Video tab instead.</property>
                            <property name="halign">start</property>
                            <property name="draw_indicator">True</property>
                            <signal name="toggled" handler="advanced_video_changed_cb" swapped="no"/>
                          </object>
                          <packing>
                            <property name="top_attach">5</property>
                            <property name="left_attach">0</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkCheckButton" id="RemoveFinishedJobs">
                            <property name="label" translatable="yes">Delete completed jobs from queue</property>
                            <property name="visible">True</property>
                            <property name="can_focus">True</property>
                            <property name="receives_default">False</property>
                            <property name="tooltip_text" translatable="yes">By default, completed jobs remain in the queue and are marked as complete.
Check this if you want the queue to clean itself up by deleting completed jobs.</property>
                            <property name="halign">start</property>
                            <property name="draw_indicator">True</property>
                            <signal name="toggled" handler="pref_changed_cb" swapped="no"/>
                          </object>
                          <packing>
                            <property name="top_attach">6</property>
                            <property name="left_attach">0</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
                        </child>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="fill">True</property>
                        <property name="position">0</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkGrid" id="hidden_prefs">
                        <property name="row-spacing">2</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                        <child>
                          <object class="GtkCheckButton" id="allow_tweaks">
                            <property name="label" translatable="yes">Allow Tweaks</property>
                            <property name="can_focus">True</property>
                            <property name="receives_default">False</property>
                            <property name="halign">start</property>
                            <property name="draw_indicator">True</property>
                            <signal name="toggled" handler="tweaks_changed_cb" swapped="no"/>
                          </object>
                          <packing>
                            <property name="top_attach">0</property>
                            <property name="left_attach">0</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkCheckButton" id="hbfd_feature">
                            <property name="label" translatable="yes">Allow HandBrake For Dummies</property>
                            <property name="can_focus">True</property>
                            <property name="receives_default">False</property>
                            <property name="halign">start</property>
                            <property name="draw_indicator">True</property>
                            <signal name="toggled" handler="hbfd_feature_changed_cb" swapped="no"/>
                          </object>
                          <packing>
                            <property name="top_attach">1</property>
                            <property name="left_attach">0</property>
                            <property name="width">1</property>
                            <property name="height">1</property>
                          </packing>
                        </child>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="fill">True</property>
                        <property name="position">1</property>
                      </packing>
                    </child>
                  </object>
                  <packing>
                    <property name="position">1</property>
                  </packing>
                </child>
                <child type="tab">
                  <object class="GtkLabel" id="label36">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="label" translatable="yes">Advanced</property>
                  </object>
                  <packing>
                    <property name="position">1</property>
                    <property name="tab_fill">False</property>
                  </packing>
                </child>
              </object>
              <packing>
                <property name="expand">True</property>
                <property name="fill">True</property>
                <property name="position">1</property>
              </packing>
            </child>
          </object>
          <packing>
            <property name="expand">True</property>
            <property name="fill">True</property>
            <property name="position">1</property>
          </packing>
        </child>
      </object>
    </child>
    <action-widgets>
      <action-widget response="-5">pref_ok</action-widget>
    </action-widgets>
  </object>
  <object class="GtkDialog" id="preset_new_folder_dialog">
    <property name="transient_for">hb_window</property>
    <property name="can_focus">False</property>
    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
    <property name="border_width">5</property>
    <property name="modal">True</property>
    <property name="window_position">center-on-parent</property>
    <property name="type_hint">dialog</property>
    <signal name="delete-event" handler="gtk_widget_hide_on_delete" swapped="no"/>
    <child internal-child="vbox">
      <object class="GtkBox" id="dialog-vbox2">
        <property name="visible">True</property>
        <property name="can_focus">False</property>
        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
        <property name="spacing">2</property>
        <child internal-child="action_area">
          <object class="GtkButtonBox" id="dialog-action_area2">
            <property name="visible">True</property>
            <property name="can_focus">False</property>
            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
            <property name="layout_style">end</property>
            <child>
              <object class="GtkButton" id="preset_folder_cancel">
                <property name="label" translatable="yes">Cancel</property>
                <property name="image">gtk-cancel</property>
                <property name="visible">True</property>
                <property name="can_focus">True</property>
                <property name="receives_default">True</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">False</property>
                <property name="position">0</property>
              </packing>
            </child>
            <child>
              <object class="GtkButton" id="preset_folder_ok">
                <property name="label" translatable="yes">OK</property>
                <property name="image">gtk-ok</property>
                <property name="visible">True</property>
                <property name="can_focus">True</property>
                <property name="receives_default">True</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">False</property>
                <property name="position">1</property>
              </packing>
            </child>
          </object>
          <packing>
            <property name="expand">False</property>
            <property name="fill">True</property>
            <property name="pack_type">end</property>
            <property name="position">0</property>
          </packing>
        </child>
        <child>
          <object class="GtkBox" id="vbox26">
            <property name="orientation">vertical</property>
            <property name="visible">True</property>
            <property name="can_focus">False</property>
            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
            <child>
              <object class="GtkBox" id="hbox31">
                <property name="orientation">horizontal</property>
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <child>
                  <object class="GtkLabel" id="label30">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="halign">start</property>
                    <property name="label" translatable="yes">Folder Name:</property>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="fill">True</property>
                    <property name="position">0</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkEntry" id="FolderName">
                    <property name="visible">True</property>
                    <property name="can_focus">True</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="max_length">40</property>
                    <property name="activates_default">True</property>
                    <property name="width_chars">30</property>
                    <property name="truncate_multiline">True</property>
                    <property name="primary_icon_activatable">False</property>
                    <property name="secondary_icon_activatable">False</property>
                  </object>
                  <packing>
                    <property name="expand">True</property>
                    <property name="fill">True</property>
                    <property name="position">1</property>
                  </packing>
                </child>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">True</property>
                <property name="padding">10</property>
                <property name="position">0</property>
              </packing>
            </child>
            <child>
              <object class="GtkFrame" id="frame17">
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <property name="label_xalign">0</property>
                <property name="shadow_type">etched-out</property>
                <child>
                  <object class="GtkTextView" id="FolderDescription">
                    <property name="margin-top">6</property>
                    <property name="margin-bottom">4</property>
                    <property name="margin-start">12</property>
                    <property name="margin-end">4</property>
                    <property name="height_request">60</property>
                    <property name="visible">True</property>
                    <property name="can_focus">True</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="wrap_mode">word</property>
                    <property name="accepts_tab">False</property>
                  </object>
                </child>
                <child type="label">
                  <object class="GtkLabel" id="label21">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="label" translatable="yes">&lt;b&gt;Description&lt;/b&gt;</property>
                    <property name="use_markup">True</property>
                  </object>
                </child>
              </object>
              <packing>
                <property name="expand">True</property>
                <property name="fill">True</property>
                <property name="padding">10</property>
                <property name="position">2</property>
              </packing>
            </child>
          </object>
          <packing>
            <property name="expand">True</property>
            <property name="fill">True</property>
            <property name="position">1</property>
          </packing>
        </child>
      </object>
    </child>
    <action-widgets>
      <action-widget response="0">preset_folder_cancel</action-widget>
      <action-widget response="-5">preset_folder_ok</action-widget>
    </action-widgets>
  </object>
  <object class="GtkDialog" id="preset_save_dialog">
    <property name="transient_for">hb_window</property>
    <property name="can_focus">False</property>
    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
    <property name="border_width">5</property>
    <property name="modal">True</property>
    <property name="window_position">center-on-parent</property>
    <property name="type_hint">dialog</property>
    <signal name="delete-event" handler="gtk_widget_hide_on_delete" swapped="no"/>
    <child internal-child="vbox">
      <object class="GtkBox" id="dialog-vbox3">
        <property name="visible">True</property>
        <property name="can_focus">False</property>
        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
        <property name="spacing">2</property>
        <child internal-child="action_area">
          <object class="GtkButtonBox" id="dialog-action_area3">
            <property name="visible">True</property>
            <property name="can_focus">False</property>
            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
            <property name="layout_style">end</property>
            <child>
              <object class="GtkButton" id="preset_cancel">
                <property name="label" translatable="yes">Cancel</property>
                <property name="image">gtk-cancel</property>
                <property name="visible">True</property>
                <property name="can_focus">True</property>
                <property name="receives_default">True</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">False</property>
                <property name="position">0</property>
              </packing>
            </child>
            <child>
              <object class="GtkButton" id="preset_ok">
                <property name="label" translatable="yes">OK</property>
                <property name="image">gtk-ok</property>
                <property name="visible">True</property>
                <property name="can_focus">True</property>
                <property name="receives_default">True</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">False</property>
                <property name="position">1</property>
              </packing>
            </child>
          </object>
          <packing>
            <property name="expand">False</property>
            <property name="fill">True</property>
            <property name="pack_type">end</property>
            <property name="position">0</property>
          </packing>
        </child>
        <child>
          <object class="GtkBox" id="vbox28">
            <property name="orientation">vertical</property>
            <property name="visible">True</property>
            <property name="can_focus">False</property>
            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
            <child>
              <object class="GtkBox" id="hbox41">
                <property name="orientation">horizontal</property>
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <child>
                  <object class="GtkLabel" id="label64">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="halign">start</property>
                    <property name="label" translatable="yes">Preset Name:</property>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="fill">True</property>
                    <property name="position">0</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkEntry" id="PresetName">
                    <property name="visible">True</property>
                    <property name="can_focus">True</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="max_length">40</property>
                    <property name="activates_default">True</property>
                    <property name="width_chars">30</property>
                    <property name="truncate_multiline">True</property>
                    <property name="primary_icon_activatable">False</property>
                    <property name="secondary_icon_activatable">False</property>
                  </object>
                  <packing>
                    <property name="expand">True</property>
                    <property name="fill">True</property>
                    <property name="position">1</property>
                  </packing>
                </child>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">True</property>
                <property name="padding">10</property>
                <property name="position">0</property>
              </packing>
            </child>
            <child>
              <object class="GtkGrid" id="PicturePresetBox">
                <property name="visible">True</property>
                <property name="row-spacing">2</property>
                <property name="can_focus">False</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <child>
                  <placeholder/>
                </child>
                <child>
                  <object class="GtkLabel" id="UsingCurrentPicLabel">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="halign">start</property>
                    <property name="label" translatable="yes">&lt;b&gt;Custom Picture Dimensions&lt;/b&gt;</property>
                    <property name="use_markup">True</property>
                  </object>
                  <packing>
                    <property name="top_attach">0</property>
                    <property name="left_attach">0</property>
                    <property name="width">3</property>
                    <property name="height">1</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkLabel" id="fillerlabel1">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="halign">start</property>
                  </object>
                  <packing>
                    <property name="top_attach">1</property>
                    <property name="left_attach">2</property>
                    <property name="width">1</property>
                    <property name="height">1</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkCheckButton" id="PictureWidthEnable">
                    <property name="label" translatable="yes">Maximum Width:</property>
                    <property name="visible">True</property>
                    <property name="can_focus">True</property>
                    <property name="receives_default">False</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="tooltip_text" translatable="yes">Enable maximum width limit.</property>
                    <property name="halign">start</property>
                    <property name="draw_indicator">True</property>
                    <signal name="toggled" handler="preset_widget_changed_cb" swapped="no"/>
                  </object>
                  <packing>
                    <property name="top_attach">1</property>
                    <property name="left_attach">0</property>
                    <property name="width">1</property>
                    <property name="height">1</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkSpinButton" id="PictureWidth">
                    <property name="width-chars">7</property>
                    <property name="visible">True</property>
                    <property name="can_focus">True</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="tooltip_text" translatable="yes">This is the maximum width that the video will be stored at.

Whenever a new source is loaded, this value will be applied if the source width is greater.
Setting this to 0 means there is no maximum width.</property>
                    <property name="primary_icon_activatable">False</property>
                    <property name="secondary_icon_activatable">False</property>
                    <property name="adjustment">adjustment32</property>
                    <property name="snap_to_ticks">True</property>
                    <signal name="value-changed" handler="preset_widget_changed_cb" swapped="no"/>
                  </object>
                  <packing>
                    <property name="top_attach">1</property>
                    <property name="left_attach">1</property>
                    <property name="width">1</property>
                    <property name="height">1</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkCheckButton" id="PictureHeightEnable">
                    <property name="label" translatable="yes">Maximum Height:</property>
                    <property name="visible">True</property>
                    <property name="can_focus">True</property>
                    <property name="receives_default">False</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="tooltip_text" translatable="yes">Enable maximum height limit.</property>
                    <property name="halign">start</property>
                    <property name="draw_indicator">True</property>
                    <signal name="toggled" handler="preset_widget_changed_cb" swapped="no"/>
                  </object>
                  <packing>
                    <property name="top_attach">2</property>
                    <property name="left_attach">0</property>
                    <property name="width">1</property>
                    <property name="height">1</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkSpinButton" id="PictureHeight">
                    <property name="width-chars">7</property>
                    <property name="visible">True</property>
                    <property name="can_focus">True</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="tooltip_text" translatable="yes">This is the maximum height that the video will be stored at.

Whenever a new source is loaded, this value will be applied if the source height is greater.
Setting this to 0 means there is no maximum height.</property>
                    <property name="primary_icon_activatable">False</property>
                    <property name="secondary_icon_activatable">False</property>
                    <property name="adjustment">adjustment33</property>
                    <signal name="value-changed" handler="preset_widget_changed_cb" swapped="no"/>
                  </object>
                  <packing>
                    <property name="top_attach">2</property>
                    <property name="left_attach">1</property>
                    <property name="width">1</property>
                    <property name="height">1</property>
                  </packing>
                </child>
              </object>
              <packing>
                <property name="expand">True</property>
                <property name="fill">True</property>
                <property name="position">1</property>
              </packing>
            </child>
            <child>
              <object class="GtkFrame" id="frame14">
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <property name="label_xalign">0</property>
                <property name="shadow_type">etched-out</property>
                <child>
                  <object class="GtkTextView" id="PresetDescription">
                    <property name="margin-top">6</property>
                    <property name="margin-bottom">4</property>
                    <property name="margin-start">12</property>
                    <property name="margin-end">4</property>
                    <property name="height_request">60</property>
                    <property name="visible">True</property>
                    <property name="can_focus">True</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="wrap_mode">word</property>
                    <property name="accepts_tab">False</property>
                  </object>
                </child>
                <child type="label">
                  <object class="GtkLabel" id="label67">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="label" translatable="yes">&lt;b&gt;Description&lt;/b&gt;</property>
                    <property name="use_markup">True</property>
                  </object>
                </child>
              </object>
              <packing>
                <property name="expand">True</property>
                <property name="fill">True</property>
                <property name="padding">10</property>
                <property name="position">2</property>
              </packing>
            </child>
          </object>
          <packing>
            <property name="expand">True</property>
            <property name="fill">True</property>
            <property name="position">1</property>
          </packing>
        </child>
      </object>
    </child>
    <action-widgets>
      <action-widget response="0">preset_cancel</action-widget>
      <action-widget response="-5">preset_ok</action-widget>
    </action-widgets>
  </object>
  <object class="GtkAdjustment" id="preview_progress_adj">
    <property name="upper">100</property>
    <property name="step_increment">1</property>
    <property name="page_increment">10</property>
  </object>
  <object class="GtkWindow" id="preview_window">
    <property name="can_focus">False</property>
    <property name="events">GDK_POINTER_MOTION_MASK | GDK_STRUCTURE_MASK</property>
    <property name="title" translatable="yes">Preview</property>
    <property name="resizable">True</property>
    <property name="window_position">center</property>
    <property name="type_hint">normal</property>
    <property name="icon-name">hb-icon</property>
    <signal name="window-state-event" handler="preview_state_cb" swapped="no"/>
    <signal name="configure-event" handler="preview_configure_cb" swapped="no"/>
    <signal name="delete-event" handler="preview_window_delete_cb" swapped="no"/>
    <child>
      <object class="GtkEventBox" id="preview_image">
        <property name="visible">True</property>
        <property name="app_paintable">True</property>
        <property name="can_focus">False</property>
        <property name="hexpand-set">True</property>
        <property name="vexpand-set">True</property>
        <property name="hexpand">True</property>
        <property name="vexpand">True</property>
        <property name="halign">fill</property>
        <property name="valign">fill</property>
        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK | GDK_ENTER_NOTIFY_MASK | GDK_LEAVE_NOTIFY_MASK</property>
        <signal name="leave-notify-event" handler="preview_leave_cb" swapped="no"/>
        <signal name="motion-notify-event" handler="preview_motion_cb" swapped="no"/>
        <signal name="size-allocate" handler="preview_resize_cb" swapped="no"/>
        <signal name="draw" handler="preview_draw_cb" swapped="no"/>
        <child>
          <object class="GtkEventBox" id="preview_hud">
            <property name="visible">False</property>
            <property name="can_focus">False</property>
            <property name="halign">center</property>
            <property name="valign">end</property>
            <property name="margin-bottom">30</property>
            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK | GDK_ENTER_NOTIFY_MASK | GDK_LEAVE_NOTIFY_MASK</property>
            <signal name="enter-notify-event" handler="hud_enter_cb" swapped="no"/>
            <signal name="leave-notify-event" handler="hud_leave_cb" swapped="no"/>
            <child>
              <object class="GtkBox" id="vbox35">
                <property name="orientation">vertical</property>
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="margin-top">5</property>
                <property name="margin-bottom">5</property>
                <property name="margin-start">10</property>
                <property name="margin-end">10</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <child>
                  <object class="GtkScale" id="preview_frame">
                    <property name="width_request">400</property>
                    <property name="visible">True</property>
                    <property name="can_focus">True</property>
                    <property name="tooltip_text" translatable="yes">Select preview frames.</property>
                    <property name="adjustment">adjustment19</property>
                    <property name="digits">0</property>
                    <property name="value_pos">bottom</property>
                    <signal name="value-changed" handler="preview_frame_value_changed_cb" swapped="no"/>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="fill">True</property>
                    <property name="position">0</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkBox" id="live_preview_box">
                    <property name="orientation">horizontal</property>
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="spacing">5</property>
                    <child>
                      <object class="GtkButton" id="live_preview_play">
                        <property name="height_request">30</property>
                        <property name="visible">True</property>
                        <property name="can_focus">True</property>
                        <property name="receives_default">True</property>
                        <property name="tooltip_text" translatable="yes">Encode and play a short sequence of video starting from the current preview position.</property>
                        <property name="relief">none</property>
                        <signal name="clicked" handler="live_preview_start_cb" swapped="no"/>
                        <child>
                          <object class="GtkImage" id="live_preview_play_image">
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="icon_name">gtk-media-play</property>
                          </object>
                        </child>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="fill">True</property>
                        <property name="position">0</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkScale" id="live_preview_progress">
                        <property name="can_focus">True</property>
                        <property name="adjustment">preview_progress_adj</property>
                        <property name="draw_value">False</property>
                        <property name="value_pos">right</property>
                        <signal name="value-changed" handler="live_preview_seek_cb" swapped="no"/>
                      </object>
                      <packing>
                        <property name="expand">True</property>
                        <property name="fill">True</property>
                        <property name="position">1</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkBox" id="live_progress_box">
                        <property name="orientation">vertical</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <child>
                          <object class="GtkProgressBar" id="live_encode_progress">
                            <property name="height_request">20</property>
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                          </object>
                          <packing>
                            <property name="expand">False</property>
                            <property name="fill">True</property>
                            <property name="position">0</property>
                          </packing>
                        </child>
                      </object>
                      <packing>
                        <property name="expand">True</property>
                        <property name="fill">True</property>
                        <property name="position">2</property>
                      </packing>
                    </child>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="fill">True</property>
                    <property name="position">1</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkBox" id="hbox26">
                    <property name="orientation">horizontal</property>
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="spacing">10</property>
                    <child>
                      <object class="GtkBox" id="live_preview_duration_box">
                        <property name="orientation">horizontal</property>
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="spacing">2</property>
                        <child>
                          <object class="GtkLabel" id="label37">
                            <property name="visible">True</property>
                            <property name="can_focus">False</property>
                            <property name="label" translatable="yes">&lt;b&gt;Duration:&lt;/b&gt;</property>
                            <property name="use_markup">True</property>
                          </object>
                          <packing>
                            <property name="expand">False</property>
                            <property name="fill">True</property>
                            <property name="position">0</property>
                          </packing>
                        </child>
                        <child>
                          <object class="GtkSpinButton" id="live_duration">
                            <property name="width-chars">7</property>
                            <property name="visible">True</property>
                            <property name="can_focus">True</property>
                            <property name="tooltip_text" translatable="yes">Set the duration of the live preview in seconds.</property>
                            <property name="primary_icon_activatable">False</property>
                            <property name="secondary_icon_activatable">False</property>
                            <property name="adjustment">adjustment21</property>
                            <property name="numeric">True</property>
                            <signal name="value-changed" handler="preview_duration_changed_cb" swapped="no"/>
                          </object>
                          <packing>
                            <property name="expand">False</property>
                            <property name="fill">True</property>
                            <property name="position">1</property>
                          </packing>
                        </child>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="fill">True</property>
                        <property name="position">0</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkCheckButton" id="preview_show_crop">
                        <property name="label" translatable="yes">Show Crop</property>
                        <property name="visible">True</property>
                        <property name="can_focus">True</property>
                        <property name="receives_default">False</property>
                        <property name="tooltip_text" translatable="yes">Show Cropped area of the preview</property>
                        <property name="halign">start</property>
                        <property name="draw_indicator">True</property>
                        <signal name="toggled" handler="show_crop_changed_cb" swapped="no"/>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="fill">True</property>
                        <property name="position">1</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkButton" id="preview_reset">
                        <property name="label" translatable="yes">Source Resolution</property>
                        <property name="visible">True</property>
                        <property name="can_focus">True</property>
                        <property name="receives_default">False</property>
                        <property name="tooltip_text" translatable="yes">Reset preview window to the source video's resolution</property>
                        <property name="relief">none</property>
                        <signal name="clicked" handler="preview_reset_clicked_cb" swapped="no"/>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="fill">True</property>
                        <property name="position">2</property>
                      </packing>
                    </child>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="fill">True</property>
                    <property name="position">2</property>
                  </packing>
                </child>
              </object>
            </child>
          </object>
        </child>
      </object>
    </child>
  </object>
  <object class="GtkFileChooserDialog" id="source_dialog">
    <property name="can_focus">False</property>
    <property name="border_width">5</property>
    <property name="modal">True</property>
    <property name="type_hint">dialog</property>
    <property name="skip_taskbar_hint">True</property>
    <property name="skip_pager_hint">True</property>
    <property name="create_folders">False</property>
    <property name="local_only">False</property>
    <property name="transient_for">hb_window</property>
])dnl
ifelse(eval(gtk_version >= 314), 1, filter_output([
    <signal name="selection-changed" handler="chooser_file_selected_cb" swapped="no"/>
    <child type="action">
      <object class="GtkButton" id="source_cancel">
        <property name="label" translatable="yes">_Cancel</property>
        <property name="image">gtk-cancel</property>
        <property name="use-underline">True</property>
        <property name="visible">True</property>
        <property name="can_focus">True</property>
        <property name="can_default">False</property>
        <property name="has_default">False</property>
        <property name="receives_default">False</property>
      </object>
    </child>
    <child type="action">
      <object class="GtkButton" id="source_ok">
        <property name="label" translatable="yes">_Open</property>
        <property name="image">gtk-ok</property>
        <property name="use-underline">True</property>
        <property name="visible">True</property>
        <property name="can_focus">True</property>
        <property name="can_default">True</property>
        <property name="has_default">True</property>
        <property name="receives_default">True</property>
      </object>
    </child>
    <child internal-child="vbox">
      <object class="GtkBox" id="dialog-vbox9">
        <property name="visible">True</property>
        <property name="can_focus">False</property>
        <property name="spacing">2</property>
]), eval(gtk_version >= 312), 1, filter_output([
    <property name="use-header-bar">0</property>
]))dnl
ifelse(eval(gtk_version <= 312), 1, filter_output([
    <signal name="selection-changed" handler="chooser_file_selected_cb" swapped="no"/>
    <child internal-child="vbox">
      <object class="GtkBox" id="dialog-vbox9">
        <property name="visible">True</property>
        <property name="can_focus">False</property>
        <property name="spacing">2</property>
        <child internal-child="action_area">
          <object class="GtkButtonBox" id="dialog-action_area6">
            <property name="visible">True</property>
            <property name="can_focus">False</property>
            <property name="layout_style">end</property>
            <child>
              <object class="GtkButton" id="source_cancel">
                <property name="label" translatable="yes">_Cancel</property>
                <property name="use-underline">True</property>
                <property name="image">gtk-cancel</property>
                <property name="visible">True</property>
                <property name="can_focus">True</property>
                <property name="can_default">True</property>
                <property name="has_default">True</property>
                <property name="receives_default">True</property>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">False</property>
                <property name="position">0</property>
              </packing>
            </child>
            <child>
              <object class="GtkButton" id="source_ok">
                <property name="label" translatable="yes">_Open</property>
                <property name="use-underline">True</property>
                <property name="image">gtk-ok</property>
                <property name="visible">True</property>
                <property name="can_focus">True</property>
                <property name="can_default">True</property>
                <property name="has_default">True</property>
                <property name="receives_default">True</property>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">False</property>
                <property name="position">1</property>
              </packing>
            </child>
          </object>
          <packing>
            <property name="expand">False</property>
            <property name="fill">True</property>
            <property name="pack_type">end</property>
            <property name="position">0</property>
          </packing>
        </child>
]))dnl
filter_output([
        <child>
          <object class="GtkBox" id="source_extra">
            <property name="orientation">vertical</property>
            <property name="visible">True</property>
            <property name="can_focus">False</property>
            <child>
              <object class="GtkBox" id="single_title_box">
                <property name="orientation">horizontal</property>
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="spacing">4</property>
                <child>
                  <object class="GtkLabel" id="label89">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="label" translatable="yes">Title Number:</property>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="fill">True</property>
                    <property name="position">0</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkSpinButton" id="single_title">
                    <property name="width-chars">5</property>
                    <property name="visible">True</property>
                    <property name="can_focus">True</property>
                    <property name="halign">start</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="primary_icon_activatable">False</property>
                    <property name="secondary_icon_activatable">False</property>
                    <property name="adjustment">adjustment24</property>
                    <signal name="value-changed" handler="setting_widget_changed_cb" swapped="no"/>
                  </object>
                  <packing>
                    <property name="expand">True</property>
                    <property name="fill">True</property>
                    <property name="position">1</property>
                  </packing>
                </child>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">True</property>
                <property name="position">0</property>
              </packing>
            </child>
            <child>
              <object class="GtkBox" id="hbox74">
                <property name="orientation">horizontal</property>
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="spacing">4</property>
                <child>
                  <object class="GtkLabel" id="label90">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="label" translatable="yes">Detected DVD devices:</property>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="fill">True</property>
                    <property name="position">0</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkComboBoxText" id="source_device">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="halign">start</property>
                    <signal name="changed" handler="dvd_device_changed_cb" swapped="no"/>
                  </object>
                  <packing>
                    <property name="expand">True</property>
                    <property name="fill">True</property>
                    <property name="position">1</property>
                  </packing>
                </child>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">True</property>
                <property name="position">1</property>
              </packing>
            </child>
          </object>
          <packing>
            <property name="expand">False</property>
            <property name="fill">True</property>
            <property name="position">2</property>
          </packing>
        </child>
      </object>
    </child>
    <action-widgets>
      <action-widget response="-6">source_cancel</action-widget>
      <action-widget response="-9">source_ok</action-widget>
    </action-widgets>
  </object>
  <object class="GtkImage" id="gtk-cancel">
    <property name="visible">True</property>
    <property name="can_focus">False</property>
    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
    <property name="icon_name">gtk-cancel</property>
  </object>
  <object class="GtkImage" id="gtk-ok">
    <property name="visible">True</property>
    <property name="can_focus">False</property>
    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
    <property name="icon_name">gtk-ok</property>
  </object>
  <object class="GtkImage" id="srt_add_image">
    <property name="visible">True</property>
    <property name="can_focus">False</property>
    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
    <property name="icon_name">gtk-add</property>
  </object>
  <object class="GtkImage" id="subtitle_add_image">
    <property name="visible">True</property>
    <property name="can_focus">False</property>
    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
    <property name="icon_name">gtk-add</property>
  </object>
  <object class="GtkDialog" id="tweak_dialog">
    <property name="can_focus">False</property>
    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
    <property name="border_width">5</property>
    <property name="modal">True</property>
    <property name="window_position">center-on-parent</property>
    <property name="type_hint">dialog</property>
    <signal name="delete-event" handler="gtk_widget_hide_on_delete" swapped="no"/>
    <child internal-child="vbox">
      <object class="GtkBox" id="dialog-vbox7">
        <property name="visible">True</property>
        <property name="can_focus">False</property>
        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
        <property name="spacing">2</property>
        <child internal-child="action_area">
          <object class="GtkButtonBox" id="dialog-action_area7">
            <property name="visible">True</property>
            <property name="can_focus">False</property>
            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
            <property name="layout_style">end</property>
            <child>
              <object class="GtkButton" id="tweak_cancel">
                <property name="label" translatable="yes">Cancel</property>
                <property name="image">gtk-cancel</property>
                <property name="visible">True</property>
                <property name="can_focus">True</property>
                <property name="receives_default">True</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">False</property>
                <property name="position">0</property>
              </packing>
            </child>
            <child>
              <object class="GtkButton" id="tweak_ok">
                <property name="label" translatable="yes">OK</property>
                <property name="image">gtk-ok</property>
                <property name="visible">True</property>
                <property name="can_focus">True</property>
                <property name="can_default">True</property>
                <property name="has_default">True</property>
                <property name="receives_default">True</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">False</property>
                <property name="position">1</property>
              </packing>
            </child>
          </object>
          <packing>
            <property name="expand">False</property>
            <property name="fill">True</property>
            <property name="pack_type">end</property>
            <property name="position">0</property>
          </packing>
        </child>
        <child>
          <object class="GtkBox" id="hbox9">
            <property name="orientation">horizontal</property>
            <property name="visible">True</property>
            <property name="can_focus">False</property>
            <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
            <child>
              <object class="GtkLabel" id="label33">
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <property name="label" translatable="yes">Setting:</property>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">True</property>
                <property name="position">0</property>
              </packing>
            </child>
            <child>
              <object class="GtkEntry" id="tweak_setting">
                <property name="visible">True</property>
                <property name="can_focus">True</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <property name="max_length">40</property>
                <property name="activates_default">True</property>
                <property name="width_chars">30</property>
                <property name="truncate_multiline">True</property>
                <property name="primary_icon_activatable">False</property>
                <property name="secondary_icon_activatable">False</property>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">True</property>
                <property name="position">1</property>
              </packing>
            </child>
          </object>
          <packing>
            <property name="expand">False</property>
            <property name="fill">True</property>
            <property name="position">1</property>
          </packing>
        </child>
      </object>
    </child>
    <action-widgets>
      <action-widget response="0">tweak_cancel</action-widget>
      <action-widget response="-5">tweak_ok</action-widget>
    </action-widgets>
  </object>
  <object class="GtkDialog" id="subtitle_dialog">
    <property name="transient_for">hb_window</property>
    <property name="can_focus">False</property>
    <property name="border_width">5</property>
    <property name="modal">True</property>
    <property name="resizable">False</property>
    <property name="window_position">center-on-parent</property>
    <property name="type_hint">dialog</property>
    <property name="skip_taskbar_hint">True</property>
    <property name="skip_pager_hint">True</property>
    <child internal-child="vbox">
      <object class="GtkBox" id="dialog-subtitle-vbox">
        <property name="visible">True</property>
        <property name="can_focus">False</property>
        <property name="spacing">6</property>
        <child internal-child="action_area">
          <object class="GtkButtonBox" id="dialog-subtitle-action_area">
            <property name="visible">True</property>
            <property name="can_focus">False</property>
            <property name="layout_style">end</property>
            <child>
              <object class="GtkButton" id="subtitle_cancel">
                <property name="label" translatable="yes">Cancel</property>
                <property name="image">gtk-cancel</property>
                <property name="visible">True</property>
                <property name="can_focus">True</property>
                <property name="receives_default">True</property>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">False</property>
                <property name="position">0</property>
              </packing>
            </child>
            <child>
              <object class="GtkButton" id="subtitle_ok">
                <property name="label" translatable="yes">OK</property>
                <property name="image">gtk-ok</property>
                <property name="visible">True</property>
                <property name="can_focus">True</property>
                <property name="receives_default">True</property>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">False</property>
                <property name="position">1</property>
              </packing>
            </child>
          </object>
          <packing>
            <property name="expand">False</property>
            <property name="fill">True</property>
            <property name="pack_type">end</property>
            <property name="position">0</property>
          </packing>
        </child>
        <child>
          <object class="GtkBox" id="subtitle_srt_switch_box">
            <property name="orientation">horizontal</property>
            <property name="visible">True</property>
            <property name="can_focus">False</property>
            <property name="margin_bottom">24</property>
            <child>
              <object class="GtkRadioButton" id="SubtitleSrtEnable">
                <property name="label" translatable="yes">Import SRT</property>
                <property name="visible">True</property>
                <property name="can_focus">True</property>
                <property name="receives_default">False</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <property name="tooltip_text" translatable="yes">Enable settings to import an SRT subtitle file</property>
                <property name="halign">start</property>
                <property name="draw_indicator">True</property>
                <signal name="toggled" handler="subtitle_srt_radio_toggled_cb" swapped="no"/>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">True</property>
                <property name="position">1</property>
              </packing>
            </child>
            <child>
              <object class="GtkRadioButton" id="SubtitleSrtDisable">
                <property name="label" translatable="yes">Embedded Subtitle List</property>
                <property name="visible">True</property>
                <property name="can_focus">True</property>
                <property name="receives_default">False</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <property name="tooltip_text" translatable="yes">Enable settings to select embedded subtitles</property>
                <property name="halign">start</property>
                <property name="draw_indicator">True</property>
                <property name="group">SubtitleSrtEnable</property>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">True</property>
                <property name="position">1</property>
              </packing>
            </child>
          </object>
          <packing>
            <property name="expand">False</property>
            <property name="fill">True</property>
            <property name="position">1</property>
          </packing>
        </child>
        <child>
          <object class="GtkBox" id="subtitle_settings_box">
            <property name="orientation">horizontal</property>
            <property name="visible">True</property>
            <property name="can_focus">False</property>
            <property name="spacing">6</property>
            <child>
              <object class="GtkGrid" id="subtitle_srt_grid">
                <property name="visible">True</property>
                <property name="row-spacing">2</property>
                <property name="can_focus">False</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <property name="column_spacing">4</property>
                <child>
                  <object class="GtkLabel" id="srt_lang_label">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="label" translatable="yes">Language</property>
                  </object>
                  <packing>
                    <property name="top_attach">0</property>
                    <property name="left_attach">1</property>
                    <property name="width">1</property>
                    <property name="height">1</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkLabel" id="srt_code_label">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="label" translatable="yes">Character Code</property>
                  </object>
                  <packing>
                    <property name="top_attach">0</property>
                    <property name="left_attach">2</property>
                    <property name="width">1</property>
                    <property name="height">1</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkLabel" id="srt_file_label">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="label" translatable="yes">File:</property>
                    <property name="halign">end</property>
                  </object>
                  <packing>
                    <property name="top_attach">2</property>
                    <property name="left_attach">0</property>
                    <property name="width">1</property>
                    <property name="height">1</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkLabel" id="srt_offset_label">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="label" translatable="yes">Offset (ms)</property>
                  </object>
                  <packing>
                    <property name="top_attach">0</property>
                    <property name="left_attach">4</property>
                    <property name="width">1</property>
                    <property name="height">1</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkComboBox" id="SrtLanguage">
                    <property name="valign">GTK_ALIGN_CENTER</property>
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="tooltip_text" translatable="yes">Set the language of this subtitle.
This value will be used by players in subtitle menus.</property>
                    <signal name="changed" handler="srt_lang_changed_cb" swapped="no"/>
                  </object>
                  <packing>
                    <property name="top_attach">1</property>
                    <property name="left_attach">1</property>
                    <property name="width">1</property>
                    <property name="height">1</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkComboBox" id="SrtCodeset">
                    <property name="valign">GTK_ALIGN_CENTER</property>
                    <property name="width_request">150</property>
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="tooltip_text" translatable="yes">Set the character code used by the SRT file you are importing.

SRTs come in all flavours of character sets.
We translate the character set to UTF-8.
The source's character code is needed in order to perform this translation.</property>
                    <property name="has_entry">True</property>
                    <signal name="changed" handler="srt_codeset_changed_cb" swapped="no"/>
                    <child internal-child="entry">
                      <object class="GtkEntry" id="combobox-entry1">
                        <property name="can_focus">True</property>
                      </object>
                    </child>
                  </object>
                  <packing>
                    <property name="top_attach">1</property>
                    <property name="left_attach">2</property>
                    <property name="width">1</property>
                    <property name="height">1</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkFileChooserButton" id="SrtFile">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="tooltip_text" translatable="yes">Select the SRT file to import.</property>
                    <property name="local_only">False</property>
                    <property name="hexpand">True</property>
                    <property name="title" translatable="yes">Srt File</property>
                    <signal name="selection-changed" handler="srt_file_changed_cb" swapped="no"/>
                  </object>
                  <packing>
                    <property name="top_attach">2</property>
                    <property name="left_attach">1</property>
                    <property name="width">2</property>
                    <property name="height">1</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkSpinButton" id="SrtOffset">
                    <property name="width-chars">8</property>
                    <property name="visible">True</property>
                    <property name="can_focus">True</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="tooltip_text" translatable="yes">Adjust the offset in milliseconds between video and SRT timestamps</property>
                    <property name="primary_icon_activatable">False</property>
                    <property name="secondary_icon_activatable">False</property>
                    <property name="adjustment">adjustment31</property>
                    <signal name="value-changed" handler="srt_offset_changed_cb" swapped="no"/>
                  </object>
                  <packing>
                    <property name="top_attach">1</property>
                    <property name="left_attach">4</property>
                    <property name="width">1</property>
                    <property name="height">1</property>
                  </packing>
                </child>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">True</property>
                <property name="position">0</property>
              </packing>
            </child>
            <child>
              <object class="GtkBox" id="subtitle_track_box">
                <property name="orientation">vertical</property>
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <child>
                  <object class="GtkLabel" id="subtitle_track_label">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="label" translatable="yes">Track</property>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="fill">True</property>
                    <property name="position">0</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkComboBox" id="SubtitleTrack">
                    <property name="valign">GTK_ALIGN_CENTER</property>
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="tooltip_text" translatable="yes">List of subtitle tracks available from your source.</property>
                    <signal name="changed" handler="subtitle_track_changed_cb" swapped="no"/>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="fill">True</property>
                    <property name="position">1</property>
                  </packing>
                </child>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">True</property>
                <property name="position">1</property>
              </packing>
            </child>
            <child>
              <object class="GtkBox" id="subtitle_options_box">
                <property name="orientation">vertical</property>
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <child>
                  <object class="GtkCheckButton" id="SubtitleForced">
                    <property name="label" translatable="yes">Forced Subtitles Only</property>
                    <property name="visible">True</property>
                    <property name="can_focus">True</property>
                    <property name="receives_default">False</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="tooltip_text" translatable="yes">Use only subtitles that have been flagged
as forced in the source subtitle track

"Forced" subtitles are usually used to show
subtitles during scenes where someone is speaking
a foreign language.</property>
                    <property name="halign">start</property>
                    <property name="draw_indicator">True</property>
                    <signal name="toggled" handler="subtitle_forced_toggled_cb" swapped="no"/>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="fill">True</property>
                    <property name="position">0</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkCheckButton" id="SubtitleBurned">
                    <property name="label" translatable="yes">Burn into video</property>
                    <property name="visible">True</property>
                    <property name="can_focus">True</property>
                    <property name="receives_default">False</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="tooltip_text" translatable="yes">Render the subtitle over the video.
The subtitle will be part of the video and can not be disabled.</property>
                    <property name="halign">start</property>
                    <property name="draw_indicator">True</property>
                    <signal name="toggled" handler="subtitle_burned_toggled_cb" swapped="no"/>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="fill">True</property>
                    <property name="position">1</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkCheckButton" id="SubtitleDefaultTrack">
                    <property name="label" translatable="yes">Set Default Track</property>
                    <property name="visible">True</property>
                    <property name="can_focus">True</property>
                    <property name="receives_default">False</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="tooltip_text" translatable="yes">Set the default output subtitle track.

Most players will automatically display this
subtitle track whenever the video is played.

This is useful for creating a "forced" track
in your output.</property>
                    <property name="halign">start</property>
                    <property name="draw_indicator">True</property>
                    <signal name="toggled" handler="subtitle_default_toggled_cb" swapped="no"/>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="fill">True</property>
                    <property name="position">2</property>
                  </packing>
                </child>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">True</property>
                <property name="position">2</property>
              </packing>
            </child>
          </object>
          <packing>
            <property name="expand">False</property>
            <property name="fill">True</property>
            <property name="position">2</property>
          </packing>
        </child>
      </object>
    </child>
    <action-widgets>
      <action-widget response="0">subtitle_cancel</action-widget>
      <action-widget response="-5">subtitle_ok</action-widget>
    </action-widgets>
  </object>
  <object class="GtkDialog" id="audio_dialog">
    <property name="transient_for">hb_window</property>
    <property name="can_focus">False</property>
    <property name="border_width">5</property>
    <property name="modal">True</property>
    <property name="resizable">False</property>
    <property name="window_position">center-on-parent</property>
    <property name="type_hint">dialog</property>
    <property name="skip_taskbar_hint">True</property>
    <property name="skip_pager_hint">True</property>
    <child internal-child="vbox">
      <object class="GtkBox" id="dialog-audio-vbox">
        <property name="visible">True</property>
        <property name="can_focus">False</property>
        <property name="spacing">6</property>
        <child internal-child="action_area">
          <object class="GtkButtonBox" id="dialog-audio-action_area">
            <property name="visible">True</property>
            <property name="can_focus">False</property>
            <property name="layout_style">end</property>
            <child>
              <object class="GtkButton" id="audio_cancel">
                <property name="label" translatable="yes">Cancel</property>
                <property name="image">gtk-cancel</property>
                <property name="visible">True</property>
                <property name="can_focus">True</property>
                <property name="receives_default">True</property>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">False</property>
                <property name="position">0</property>
              </packing>
            </child>
            <child>
              <object class="GtkButton" id="audio_ok">
                <property name="label" translatable="yes">OK</property>
                <property name="image">gtk-ok</property>
                <property name="visible">True</property>
                <property name="can_focus">True</property>
                <property name="receives_default">True</property>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">False</property>
                <property name="position">1</property>
              </packing>
            </child>
          </object>
          <packing>
            <property name="expand">False</property>
            <property name="fill">True</property>
            <property name="pack_type">end</property>
            <property name="position">0</property>
          </packing>
        </child>
        <child>
          <object class="GtkGrid" id="audio_dialog_grid1">
            <property name="row-spacing">2</property>
            <property name="visible">True</property>
            <property name="can_focus">False</property>
            <property name="column_spacing">5</property>
            <child>
              <object class="GtkLabel" id="label35">
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <property name="label" translatable="yes">Source Track</property>
              </object>
              <packing>
                <property name="top_attach">0</property>
                <property name="left_attach">0</property>
                <property name="width">1</property>
                <property name="height">1</property>
              </packing>
            </child>
            <child>
              <object class="GtkComboBox" id="AudioTrack">
                <property name="valign">GTK_ALIGN_CENTER</property>
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="hexpand">True</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <property name="tooltip_text" translatable="yes">List of audio tracks available from your source.</property>
                <signal name="changed" handler="audio_track_changed_cb" swapped="no"/>
              </object>
              <packing>
                <property name="top_attach">1</property>
                <property name="left_attach">0</property>
                <property name="width">1</property>
                <property name="height">1</property>
              </packing>
            </child>
            <child>
              <object class="GtkLabel" id="audio_name_label">
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="label" translatable="yes">Track Name:</property>
                <property name="use_markup">True</property>
                <property name="halign">center</property>
              </object>
              <packing>
                <property name="top_attach">0</property>
                <property name="left_attach">1</property>
                <property name="width">1</property>
                <property name="height">1</property>
              </packing>
            </child>
            <child>
              <object class="GtkEntry" id="AudioTrackName">
                <property name="visible">True</property>
                <property name="can_focus">True</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <property name="tooltip_text" translatable="yes">Set the audio track name.

Players may use this in the audio selection list.</property>
                <property name="max_length">40</property>
                <property name="hexpand">True</property>
                <property name="activates_default">True</property>
                <property name="truncate_multiline">True</property>
                <property name="primary_icon_activatable">False</property>
                <property name="secondary_icon_activatable">False</property>
                <signal name="changed" handler="audio_name_changed_cb" swapped="no"/>
              </object>
              <packing>
                <property name="top_attach">1</property>
                <property name="left_attach">1</property>
                <property name="width">1</property>
                <property name="height">1</property>
              </packing>
            </child>
          </object>
          <packing>
            <property name="expand">True</property>
            <property name="fill">True</property>
            <property name="position">1</property>
          </packing>
        </child>
        <child>
          <object class="GtkGrid" id="audio_dialog_grid2">
            <property name="row-spacing">2</property>
            <property name="visible">True</property>
            <property name="can_focus">False</property>
            <property name="margin_top">24</property>
            <child>
              <object class="GtkLabel" id="AudioEncoderLabel">
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <property name="label" translatable="yes">Encoder</property>
              </object>
              <packing>
                <property name="top_attach">0</property>
                <property name="left_attach">0</property>
                <property name="width">1</property>
                <property name="height">1</property>
              </packing>
            </child>
            <child>
              <object class="GtkLabel" id="AudioBitrateLabel">
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="label" translatable="yes">Bitrate/Quality</property>
                <property name="use_markup">True</property>
                <property name="halign">center</property>
              </object>
              <packing>
                <property name="top_attach">0</property>
                <property name="left_attach">1</property>
                <property name="width">1</property>
                <property name="height">1</property>
              </packing>
            </child>
            <child>
              <object class="GtkLabel" id="AudioMixdownLabel">
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <property name="label" translatable="yes">Mix</property>
              </object>
              <packing>
                <property name="top_attach">0</property>
                <property name="left_attach">2</property>
                <property name="width">1</property>
                <property name="height">1</property>
              </packing>
            </child>
            <child>
              <object class="GtkLabel" id="AudioSamplerateLabel">
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="label" translatable="yes">Sample Rate</property>
                <property name="use_markup">True</property>
                <property name="halign">center</property>
              </object>
              <packing>
                <property name="top_attach">0</property>
                <property name="left_attach">3</property>
                <property name="width">1</property>
                <property name="height">1</property>
              </packing>
            </child>
            <child>
              <object class="GtkLabel" id="AudioTrackGainLabel">
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="label" translatable="yes">Gain</property>
                <property name="use_markup">True</property>
                <property name="halign">center</property>
              </object>
              <packing>
                <property name="top_attach">0</property>
                <property name="left_attach">4</property>
                <property name="width">1</property>
                <property name="height">1</property>
              </packing>
            </child>
            <child>
              <object class="GtkLabel" id="AudioTrackDRCSliderLabel">
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="tooltip_markup" translatable="yes">&lt;b&gt;Dynamic Range Compression:&lt;/b&gt; Adjust the dynamic range of the output audio track.

For source audio that has a wide dynamic range (very loud and very soft sequences),
DRC allows you to 'compress' the range by making loud sounds softer and soft sounds louder.</property>
                <property name="label" translatable="yes">DRC</property>
                <property name="use_markup">True</property>
                <property name="halign">center</property>
              </object>
              <packing>
                <property name="top_attach">0</property>
                <property name="left_attach">5</property>
                <property name="width">1</property>
                <property name="height">1</property>
              </packing>
            </child>
            <child>
              <object class="GtkComboBox" id="AudioEncoder">
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="valign">GTK_ALIGN_CENTER</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <property name="tooltip_text" translatable="yes">Set the audio codec to encode this track with.</property>
                <signal name="changed" handler="audio_codec_changed_cb" swapped="no"/>
              </object>
              <packing>
                <property name="top_attach">1</property>
                <property name="left_attach">0</property>
                <property name="width">1</property>
                <property name="height">1</property>
              </packing>
            </child>
            <child>
              <object class="GtkBox" id="audio_dialog_hbox24">
                <property name="orientation">horizontal</property>
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <child>
                  <object class="GtkBox" id="AudioTrackQualityEnableBox">
                    <property name="orientation">vertical</property>
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <child>
                      <object class="GtkRadioButton" id="AudioTrackBitrateEnable">
                        <property name="label" translatable="yes">Bitrate</property>
                        <property name="visible">True</property>
                        <property name="can_focus">True</property>
                        <property name="receives_default">False</property>
                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                        <property name="tooltip_text" translatable="yes">Enable bitrate setting</property>
                        <property name="halign">start</property>
                        <property name="draw_indicator">True</property>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="fill">True</property>
                        <property name="position">0</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkRadioButton" id="AudioTrackQualityEnable">
                        <property name="label" translatable="yes">Quality</property>
                        <property name="visible">True</property>
                        <property name="can_focus">True</property>
                        <property name="receives_default">False</property>
                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                        <property name="tooltip_text" translatable="yes">Enable quality setting</property>
                        <property name="halign">start</property>
                        <property name="draw_indicator">True</property>
                        <property name="group">AudioTrackBitrateEnable</property>
                        <signal name="toggled" handler="audio_quality_radio_changed_cb" swapped="no"/>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="fill">True</property>
                        <property name="position">1</property>
                      </packing>
                    </child>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="fill">True</property>
                    <property name="position">0</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkComboBox" id="AudioBitrate">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="valign">GTK_ALIGN_CENTER</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="tooltip_text" translatable="yes">Set the bitrate to encode this track with.</property>
                    <signal name="changed" handler="audio_bitrate_changed_cb" swapped="no"/>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="fill">True</property>
                    <property name="position">1</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkBox" id="AudioTrackQualityBox">
                    <property name="orientation">horizontal</property>
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <child>
                      <object class="GtkScaleButton" id="AudioTrackQualityX">
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="valign">GTK_ALIGN_CENTER</property>
                        <property name="receives_default">False</property>
                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                        <property name="tooltip_markup" translatable="yes">&lt;b&gt;Quality:&lt;/b&gt; For output codec's that support it, adjust the quality of the output.</property>
                        <property name="orientation">vertical</property>
                        <property name="adjustment">audio_quality_adj</property>
                        <property name="icons">weather-storm
weather-clear
weather-storm
weather-showers-scattered
weather-showers
weather-overcast
weather-few-clouds
weather-clear</property>
                        <signal name="value-changed" handler="quality_widget_changed_cb" swapped="no"/>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="fill">True</property>
                        <property name="position">0</property>
                      </packing>
                    </child>
                    <child>
                      <object class="GtkLabel" id="AudioTrackQualityValue">
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="halign">start</property>
                        <property name="label" translatable="yes">00.0</property>
                        <property name="use_markup">True</property>
                        <property name="width_chars">4</property>
                      </object>
                      <packing>
                        <property name="expand">False</property>
                        <property name="fill">True</property>
                        <property name="position">1</property>
                      </packing>
                    </child>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="fill">True</property>
                    <property name="position">2</property>
                  </packing>
                </child>
              </object>
              <packing>
                <property name="top_attach">1</property>
                <property name="left_attach">1</property>
                <property name="width">1</property>
                <property name="height">1</property>
              </packing>
            </child>
            <child>
              <object class="GtkComboBox" id="AudioMixdown">
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="valign">GTK_ALIGN_CENTER</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <property name="tooltip_text" translatable="yes">Set the mixdown of the output audio track.</property>
                <signal name="changed" handler="audio_mix_changed_cb" swapped="no"/>
              </object>
              <packing>
                <property name="top_attach">1</property>
                <property name="left_attach">2</property>
                <property name="width">1</property>
                <property name="height">1</property>
              </packing>
            </child>
            <child>
              <object class="GtkComboBox" id="AudioSamplerate">
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="valign">GTK_ALIGN_CENTER</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <property name="tooltip_text" translatable="yes">Set the sample rate of the output audio track.</property>
                <signal name="changed" handler="audio_samplerate_changed_cb" swapped="no"/>
              </object>
              <packing>
                <property name="top_attach">1</property>
                <property name="left_attach">3</property>
                <property name="width">1</property>
                <property name="height">1</property>
              </packing>
            </child>
            <child>
              <object class="GtkBox" id="hbox34">
                <property name="orientation">horizontal</property>
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <child>
                  <object class="GtkScaleButton" id="AudioTrackGainSlider">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="valign">GTK_ALIGN_CENTER</property>
                    <property name="receives_default">False</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="tooltip_markup" translatable="yes">&lt;b&gt;Audio Gain:&lt;/b&gt; Adjust the amplification or attenuation of the output audio track.</property>
                    <property name="orientation">vertical</property>
                    <property name="adjustment">adjustment35</property>
                    <property name="icons">audio-volume-muted
audio-volume-high
audio-volume-low
audio-volume-medium</property>
                    <signal name="value-changed" handler="gain_widget_changed_cb" swapped="no"/>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="fill">True</property>
                    <property name="position">0</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkLabel" id="AudioTrackGainValue">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="halign">start</property>
                    <property name="label" translatable="yes">0dB</property>
                    <property name="use_markup">True</property>
                    <property name="width_chars">6</property>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="fill">True</property>
                    <property name="position">1</property>
                  </packing>
                </child>
              </object>
              <packing>
                <property name="top_attach">1</property>
                <property name="left_attach">4</property>
                <property name="width">1</property>
                <property name="height">1</property>
              </packing>
            </child>
            <child>
              <object class="GtkBox" id="hbox33">
                <property name="orientation">horizontal</property>
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                <child>
                  <object class="GtkScaleButton" id="AudioTrackDRCSlider">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="valign">GTK_ALIGN_CENTER</property>
                    <property name="receives_default">False</property>
                    <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                    <property name="tooltip_markup" translatable="yes">&lt;b&gt;Dynamic Range Compression:&lt;/b&gt; Adjust the dynamic range of the output audio track.

For source audio that has a wide dynamic range (very loud and very soft sequences),
DRC allows you to 'compress' the range by making loud sounds softer and soft sounds louder.</property>
                    <property name="orientation">vertical</property>
                    <property name="adjustment">adjustment28</property>
                    <property name="icons">audio-input-microphone</property>
                    <signal name="value-changed" handler="drc_widget_changed_cb" swapped="no"/>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="fill">True</property>
                    <property name="position">0</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkLabel" id="AudioTrackDRCValue">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="halign">start</property>
                    <property name="label" translatable="yes">Off</property>
                    <property name="use_markup">True</property>
                    <property name="width_chars">4</property>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="fill">True</property>
                    <property name="position">1</property>
                  </packing>
                </child>
              </object>
              <packing>
                <property name="top_attach">1</property>
                <property name="left_attach">5</property>
                <property name="width">1</property>
                <property name="height">1</property>
              </packing>
            </child>
          </object>
          <packing>
            <property name="expand">True</property>
            <property name="fill">True</property>
            <property name="position">2</property>
          </packing>
        </child>
      </object>
    </child>
    <action-widgets>
      <action-widget response="0">audio_cancel</action-widget>
      <action-widget response="-5">audio_ok</action-widget>
    </action-widgets>
  </object>
  <object class="GtkDialog" id="update_dialog">
    <property name="transient_for">hb_window</property>
    <property name="can_focus">False</property>
    <property name="border_width">5</property>
    <property name="modal">True</property>
    <property name="window_position">center-on-parent</property>
    <property name="type_hint">dialog</property>
    <property name="skip_taskbar_hint">True</property>
    <property name="skip_pager_hint">True</property>
    <child internal-child="vbox">
      <object class="GtkBox" id="dialog-vbox8">
        <property name="visible">True</property>
        <property name="can_focus">False</property>
        <property name="spacing">2</property>
        <child internal-child="action_area">
          <object class="GtkButtonBox" id="dialog-action_area8">
            <property name="visible">True</property>
            <property name="can_focus">False</property>
            <property name="layout_style">end</property>
            <child>
              <object class="GtkButton" id="update_skip">
                <property name="label" translatable="yes">Skip This Version</property>
                <property name="visible">True</property>
                <property name="can_focus">True</property>
                <property name="receives_default">True</property>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">False</property>
                <property name="position">0</property>
              </packing>
            </child>
            <child>
              <object class="GtkButton" id="update_remind">
                <property name="label" translatable="yes">Remind Me Later</property>
                <property name="visible">True</property>
                <property name="can_focus">True</property>
                <property name="receives_default">True</property>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">False</property>
                <property name="position">1</property>
              </packing>
            </child>
          </object>
          <packing>
            <property name="expand">False</property>
            <property name="fill">True</property>
            <property name="pack_type">end</property>
            <property name="position">0</property>
          </packing>
        </child>
        <child>
          <object class="GtkBox" id="hbox24">
            <property name="orientation">horizontal</property>
            <property name="visible">True</property>
            <property name="can_focus">False</property>
            <child>
              <object class="GtkBox" id="vbox19">
                <property name="orientation">vertical</property>
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <child>
                  <object class="GtkEventBox" id="eventbox2">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="events">GDK_BUTTON_MOTION_MASK | GDK_BUTTON_PRESS_MASK | GDK_STRUCTURE_MASK</property>
                    <property name="visible_window">False</property>
                    <property name="above_child">True</property>
                    <child>
                      <object class="GtkImage" id="image10">
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="events">GDK_POINTER_MOTION_MASK | GDK_POINTER_MOTION_HINT_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK</property>
                        <property name="pixel_size">64</property>
                        <property name="icon_name">hb-icon</property>
                      </object>
                    </child>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="fill">True</property>
                    <property name="position">0</property>
                  </packing>
                </child>
                <child>
                  <placeholder/>
                </child>
              </object>
              <packing>
                <property name="expand">False</property>
                <property name="fill">True</property>
                <property name="position">0</property>
              </packing>
            </child>
            <child>
              <object class="GtkBox" id="vbox41">
                <property name="orientation">vertical</property>
                <property name="visible">True</property>
                <property name="can_focus">False</property>
                <child>
                  <object class="GtkLabel" id="label22">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="halign">start</property>
                    <property name="margin-start">10</property>
                    <property name="margin-end">10</property>
                    <property name="margin-top">5</property>
                    <property name="margin-bottom">5</property>
                    <property name="label" translatable="yes">&lt;b&gt;A new version of HandBrake is available!&lt;/b&gt;</property>
                    <property name="use_markup">True</property>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="fill">True</property>
                    <property name="position">0</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkLabel" id="update_message">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="halign">start</property>
                    <property name="margin-start">10</property>
                    <property name="margin-end">10</property>
                    <property name="margin-top">5</property>
                    <property name="margin-bottom">5</property>
                    <property name="label" translatable="yes">HandBrake xxx is now available (you have yyy).</property>
                  </object>
                  <packing>
                    <property name="expand">False</property>
                    <property name="fill">True</property>
                    <property name="position">1</property>
                  </packing>
                </child>
                <child>
                  <object class="GtkFrame" id="frame15">
                    <property name="visible">True</property>
                    <property name="can_focus">False</property>
                    <property name="label_xalign">0</property>
                    <property name="shadow_type">etched-out</property>
                    <child>
                      <object class="GtkScrolledWindow" id="update_scroll">
                        <property name="margin-start">12</property>
                        <property name="halign">start</property>
                        <property name="visible">True</property>
                        <property name="can_focus">True</property>
                        <child>
                          <placeholder/>
                        </child>
                      </object>
                    </child>
                    <child type="label">
                      <object class="GtkLabel" id="label88">
                        <property name="visible">True</property>
                        <property name="can_focus">False</property>
                        <property name="label" translatable="yes">&lt;b&gt;Release Notes&lt;/b&gt;</property>
                        <property name="use_markup">True</property>
                      </object>
                    </child>
                  </object>
                  <packing>
                    <property name="expand">True</property>
                    <property name="fill">True</property>
                    <property name="position">2</property>
                  </packing>
                </child>
              </object>
              <packing>
                <property name="expand">True</property>
                <property name="fill">True</property>
                <property name="position">1</property>
              </packing>
            </child>
          </object>
          <packing>
            <property name="expand">True</property>
            <property name="fill">True</property>
            <property name="position">1</property>
          </packing>
        </child>
      </object>
    </child>
    <action-widgets>
      <action-widget response="-5">update_skip</action-widget>
      <action-widget response="0">update_remind</action-widget>
    </action-widgets>
  </object>
  <object class="GtkAdjustment" id="VideoPresetRange">
    <property name="upper">1</property>
    <property name="step_increment">1</property>
    <property name="page_increment">1</property>
  </object>
</interface>
])dnl
