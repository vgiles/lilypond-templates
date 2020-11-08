% Beginnings of a stylesheet
% V 0.2

% defining custom functions
% this one inserts a boxed text ie an instruction
textinst =
#(define-music-function
     (parser location string)
     (string?)
   #{ <>^\markup \box \override #'(box-padding . 0.8) 
        \override #'(font-size . 0.5) #string #})

%general layout things

% #(set-global-staff-size 18)
% % Define default title and composer
%% Come back to working this out. 
% \header {
%     dedication = "Dedication"
%     % subtitle = "Subtitle or instrumentation"
%     subsubtitle = "instrumentation"
%     title = "Title"
%     composer = "Composer"
%     arranger = "Year"
%     tagline = #f
% }

\layout{
    #(layout-set-staff-size 15) % set overall staff size with scaling
    \context {
        \Score
        \override MetronomeMark.extra-offset = #'(-5 . 0)
        \override MetronomeMark.padding = #'3
    }
    \context {
        \Staff
        \override TimeSignature.style = #'numbered
        \override TimeSignature.Y-offset = 4
        \override TupletNumber.text = #tuplet-number::calc-fraction-text
        \override TupletBracket.bracket-visibility = ##t
	      \override Beam.beam-thickness = #1
        \override Beam.damping = #100
        % \override Beam.gap = #0.5
        % \override Beam.ideal-slope-factor = #0
        \override Stem.details.beamed-lengths = #'(5)
        \override Beam.length-fraction = #1.5
        %\override Stem.details.secondary-beam-demerit = #'(20)

        \accidentalStyle Score.modern
    }
    \context {
        \Voice
        \override Glissando.thickness = #3
        \override Glissando.gap = #0.1
    }
  %   % Create time signature context
  %   % Source: http://lsr.di.unimi.it/LSR/Snippet?id=272
  %   % My source from: http://lilypondblog.org/wp-content/uploads/2014/05/complex-example-spiced-clean.ly
  %   % (modified)
  %   \context {
  %     \type Engraver_group
  %     % Add elements that _can_ be printed
  %     \consists "Timing_translator"
  %     \consists "Time_signature_engraver"
  %     \consists "Axis_group_engraver"
  %     \name "TimeLine"
  %     \alias "Staff"
    
  %   % Align time signatures on barlines
  %     \override TimeSignature.X-offset =
  %     #ly:self-alignment-interface::x-aligned-on-self
  %     \override TimeSignature.self-alignment-X = #CENTER
  % }
  %   \context {
  %     \Score
  %     \accepts "TimeLine"
  %     \remove "Timing_translator"
  %     \remove "Default_bar_line_engraver"
  %     \override TupletNumber.text = #tuplet-number::calc-fraction-text
  % }
  %   \context {
  %     \Staff
  %     \consists "Timing_translator"
  %     \consists "Default_bar_line_engraver"
  %     \remove "Time_signature_engraver"
  % }
% }
}

\paper{
    #(define fonts
        (set-global-fonts
            #:roman "Avenir Light"
            #:sans "Gill Sans Light"
            #:typewriter "Spot Mono Regular"
    ))
    #(define top-margin (* 0.5 in))
    #(define bottom-margin (* 0.5 in))
    system-system-spacing.basic-distance = 12
    score-system-spacing =
        #'((basic-distance . 12)
           (minimum-distance . 6)
           (padding . 1)
           (stretchability . 12))
}