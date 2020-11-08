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
    %% input music
}

lower = \relative c {
    \clef bass
    \key dodecaphonic
    \numericTimeSignature \time 4/4
    %% input music
    c'16[ d'16 e'16 f'16]
    c''16[ d''16 e''16 f''16]   
}

% Score block
%% Note to self: it appears I can do the note input in separate files and use includes
%% to then load them up into the score itself.
\score {
    \new PianoStaff <<
        \new Staff \upper
        \new Staff \lower
        >>
    \override Stem #'direction = #down
    \override Beam #'positions = #'(-6 . -6)'
}

% %%% BEGIN SNIPPET %%%

% \version "2.9.11"

% \new Staff {
% \override Stem #'direction = #down
% \override Beam #'positions = #'(-6 . -6)
% c'16[ d'16 e'16 f'16]
% c''16[ d''16 e''16 f''16]
% }

% %%% END SNIPPET %%%