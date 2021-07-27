%%
% A prototype Lilypond file 
% by Vincent Giles
%%
% Lilypond engraver template v 0.1
%%

\version "2.20.0"

% Define title and composer
\header {
    title = "Title to be confirmed"
    composer = "Vincent Giles"
    tagline = #f
}

% Define a piano
% This seems to also be where one inputs music, the data-entry point
upper = \relative c'' {
    \clef treble
    \numericTimeSignature \time 4/4
    %% input music
	\override TupletNumber.text = #tuplet-number::calc-fraction-text
	\override Beam.beam-thickness = #0.6
	\tuplet 3/4 {
    	\tuplet 5/4 {c16[e f, r16 f']}
		(d4
		e16[\tuplet 3/2 {f32[f, g}r16]})
	\tuplet 7/4 {d4 e fis g r4 r8[ fis8] r4}
}

lower = \relative c {
    \clef bass
    \numericTimeSignature \time 4/4
    %% input music
}

% Score block
%% Note to self: it appears I can do the note input in separate files and use includes
%% to then load them up into the score itself.
\score {
    \new PianoStaff <<
		\accidentalStyle Score.modern
        \new Staff \upper
        \new Staff \lower
        >>
}
