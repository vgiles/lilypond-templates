%%
% A prototype Lilypond file 
% by Vincent Giles
%%
% Lilypond engraver template v 0.1
%%

\version "2.20.0"

\include "vg-stylesheet.ily"

% Define default title and composer
\header {
    dedication = "For Emily"
    % subtitle = "Subtitle or instrumentation"
    subsubtitle = "solo piano"
    title = "a demonstration"
    composer = "scout potato"
    arranger = "2020"
    tagline = "with all the love"
}

% Define a piano
% This seems to also be where one inputs music, the data-entry point
upper = \relative c'' {
	\tempo 4 = 100
    \clef treble
    \time 4/4
    \mark "Elegantly" % This is the tempo instructions
    %% input music
    %% Measure 1
	\tuplet 3/4 {\pp
    	\tuplet 5/4 {c16[d e r16 f']}
        \textinst "Delicately, with much rubato"
		(d4
		e16[\tuplet 3/2 {f32[f, g}r8]})
    %% Measure 2
	\tuplet 7/4 {d4\p e fis g r4 r8[ fis8] r4}
    %% Measure 3
    \tuplet 3/4 {\pp
    	\tuplet 5/4 {c16[d e r16 f]}
		(d4
		e16[\tuplet 3/2 {f32[f g} r8]})
    %% Measure 5
	\tuplet 6/4 {\<d4 e\f \textinst "Bombastic" fis g r4 r8[ fis8]}
    %% Measure 6
    \tuplet 3/4 {\pp
    	\tuplet 5/4 {c16[d e r16 f]}
		(d4
		e16[\tuplet 3/2 {f32[fs g}r8]})
    %% Measure 7
	\tuplet 6/4 {\<d4 e\f \textinst "Bombastic" fis g r4 r8[ fis8]}
    %% Measure 8
    \tuplet 3/4 {\pp
        \tuplet 5/4 {c16[d e r16 f]}
        \textinst "Delicately, with much rubato"
	    (d4
	    e16[\tuplet 3/2 {f32[f g}r8]})
    %% Measure 9
	\tuplet 7/4 {d4\p e fis g r4 r8[ fis8] r4}
    \bar "|."
}

lower = \relative c {
    \clef bass
    \time 4/4
    %% input music
    %% Measure 1
    \tuplet 3/4 {\pp
    	\tuplet 5/4 {c16[d e r16 f']}
		(d4
		e16[\tuplet 3/2 {f32[f g}r8]})
    %% Measure 2
	\tuplet 6/4 {\<d4 e\f \textinst "Bombastic" fis g r4 r8[ fis8]}
    %% Measure 3
    \tuplet 3/4 {\pp
        \tuplet 5/4 {c16[d e r16 f]}
        \textinst "Delicately, with much rubato"
	    (d4
	    e16[\tuplet 3/2 {f32[f g}r8]})
    %% Measure 4
	\tuplet 7/4 {d4\p e fis g r4 r8[ fis8] r4}
    %% Measure 5
	\tuplet 3/4 {\pp
    	\tuplet 5/4 {c16[d e r16 f]}
        \textinst "Delicately, with much rubato"
		(d4
		e16[\tuplet 3/2 {f32[f g}r8]})
    %% Measure 6
	\tuplet 7/4 {d4\p e fis g r4 r8[ fis8] r4}
    %% Measure 7
    \tuplet 3/4 {\pp
    	\tuplet 5/4 {c16[d, e, r16 f]}
		(d4
		e16[\tuplet 3/2 {f32[f g}r8]})
    %% Measure 8
	\tuplet 6/4 {\<d4 e\f \textinst "Bombastic" fis g r4 r8[ fis8]}
    \bar "|."
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
