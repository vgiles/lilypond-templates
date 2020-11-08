% Beginnings of a stylesheet
% V 0.1

% defining custom functions
textinst =
#(define-music-function
     (parser location string)
     (string?)
   #{ <>^\markup \box \override #'(box-padding . 0.8) 
        \override #'(font-size . 0.5) #string #})

%general layout things


% #(set-global-staff-size 18)

\layout{
    #(layout-set-staff-size 15)
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
            #:roman "Avenir Roman"
            #:sans "Gill Sans Light"
            #:typewriter "Spot Mono Regular"
    ))
}