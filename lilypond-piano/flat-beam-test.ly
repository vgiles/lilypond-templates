%%
% A prototype Lilypond file 
% by Vincent Giles
%%

\version "2.20.0"

% Define title and composer
\header {
    title = "Title to be confirmed"
    composer = "Vincent Giles"
    year = "2020"
    tagline = #f
}

% Define a piano
% This seems to also be where one inputs music, the data-entry point
upper = \relative c'' {
    \clef treble
    \key dodecaphonic
    \numericTimeSignature \time 4/4
   	\override Stem #'direction = #’up
    \override Beam #'positions = #’(-5 . -5)
	\override Beam.beam-thickness = #0.8
	\override Beam.length-fraction = #1.3
    %% input music
    c16[ d16 e16 f16]
    c16[ d16 e16 f16]  
}

lower = \relative c {
    \clef bass
    \key dodecaphonic
    \numericTimeSignature \time 4/4
   	\override Stem #'direction = #’up
    \override Beam #'positions = #’(-9 . -9)
	\override Beam.beam-thickness = #1.9
	\override Beam.length-fraction = #1.3
    %% input music
    c16[ d16 e,16 f16]
    c16[ d16 e16 f16]  
}

% Score block
%% Note to self: it appears I can do the note input in separate files and use includes
%% to then load them up into the score itself.
\score {
    \new PianoStaff <<
        \new Staff \upper
        \new Staff \lower
        >>
}

