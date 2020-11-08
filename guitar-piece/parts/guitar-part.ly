%% Guitar part for:
%%%% Testing Different Pencils
%%%% Vincent Giles
%%%% 2013
%%%% Typeset 2020

\version "2.20.0"

% theguitar
% This seems to also be where one inputs music, the data-entry point
guitar = \relative c'' {
	\tempo "loose" 8 = 78
    \clef treble
    \time 3/8
    %% input music
    %% Measure 1
    \f\<gis8 g' a
    |
    %% Measure 2
    \fff\>b a e \p
    |
    %% Measure 3
    \time 5/8
    %% INSERT RITARDANDO LINE and accent on Bb
    cis c d \sf bes \p cis 
    |
    %% Measure 4
    \tempo "growing frantic" 4 = 56
    \time 4/4
    \pp \< \tuplet 5/4 {a16[ b aes bes \fff f ~]}
    \tuplet 3/2 {f8[ a \> b~ ]}
    %% Insert trem lines
    b8 \p gis
    r4
    |
}