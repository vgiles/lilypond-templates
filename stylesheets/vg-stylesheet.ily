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
        \override TupletNumber.text = #tuplet-number::calc-fraction-text
        \override TupletBracket.bracket-visibility = ##t
	    \override Beam.beam-thickness = #0.65
        \accidentalStyle Score.modern
    }
    \context {
        \Voice
        \override Glissando.thickness = #3
        \override Glissando.gap = #0.1
    }
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
    system-system-spacing.basic-distance = 20
    score-system-spacing =
        #'((basic-distance . 30)
           (minimum-distance . 10)
           (padding . 1)
           (stretchability . 12))
}