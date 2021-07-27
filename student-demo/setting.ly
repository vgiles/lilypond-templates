%% A test score
%% Vincent Giles
%% 2020
%%

\version "2.20.0"

\include "parts/piano.ly"

\header {
    title = "This Is The Title of My Piece"
    composer = "Vince Giles"
}

\score {
    \new PianoStaff 
    <<
    \new Staff \upper
    \new Staff \lower
    >>
}