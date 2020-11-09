%%
% A prototype Lilypond file 
% by Vincent Giles
%%
% Lilypond engraver template v 0.1
%%

\version "2.20.0"

\include "stylesheets/vg-stylesheet.ily"
\include "parts/guitar-part.ly"

% Define default title and composer
\header {
    % dedication = "For Emily"
    % subtitle = "I guess it's probably more like testing lilypond..."
    subsubtitle = "guitar"
    title = "Testing Different Pencils"
    composer = "Vincent Giles"
    arranger = "2013 (minor rev 2020)"
    tagline = "with all the love"
}

% Score block
%% Note to self: it appears I can do the note input in separate files and use includes
%% to then load them up into the score itself.
\score {
    \new Staff \with {
        instrumentName = #"guitar "
        shortInstrumentName = "gt. "
    }
    \guitar
}

% \paper {
%     #(set-default-paper-size "a4" 'landscape)
% }
