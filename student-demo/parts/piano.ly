%% Piano Part

\version  "2.20.0"

upper = {
        \relative c
        \clef treble
        \numericTimeSignature \time 4/4   
        % Measure 1
        c''8 dis16 e
        c'4 b \p aes
        r2   
        % Measure 2
        d''' \< f16 g a b \tuplet 7/4 {c d e f r8 ~ r16 \!}
    }
lower = {
        \relative c
        \clef bass
        \numericTimeSignature \time 4/4
        % Measure 1
        c8 dis16 e
        c'4 b aes
        r2
        % Measure 2
        d, f16 g a b c d e f
    }