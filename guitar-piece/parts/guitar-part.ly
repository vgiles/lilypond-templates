%% Guitar part for:
%%%% Testing Different Pencils
%%%% Vincent Giles
%%%% 2013
%%%% Typeset 2020

\version "2.20.0"

% theguitar
% This seems to also be where one inputs music, the data-entry point
guitar = \relative c'' {
    % \override Stem #'direction = #down
    % \override Beam #'positions = #'(-6 . -6)
	\tempo "loose" 8 = 78
    \clef treble
    \time 3/8
    %% input music
    %% Measure 1
    \f\<aes8 g' a
    |
    %% Measure 2
    \fff\>b a e \p
    |
    %% Measure 3
    \time 5/8
    %% INSERT RITARDANDO LINE and accent on Bb
    des c d \sf bes-> \p des 
    |
    %% Measure 4
    \tempo \markup {
        "growing frantic "
        \concat {
            (   
                \smaller \general-align #Y #DOWN \note #"8" #1
                " = "
                \smaller \general-align #Y #DOWN \note #"4" #1
            )
        }
    }
    \time 4/4
    \pp \< \tuplet 5/4 {a16[ b aes bes \fff f ~]}
    \tuplet 3/2 {f8[ a \> b~ ]}
    %% Insert trem lines
    b8:64 \sfz aes \p
    r4
    |
    %% Measure 5
    \time 7/4
    r16[ e-> c \p dis ~ \mf]
    \tuplet 5/4 {dis [c cisih' \< a \f g \p]}
    r8[ g'16 a]
    \tuplet 3/2 {eeseh4 \> d aes ~}
    \tuplet 6/4 {aes16 \ppp [ bes, \<  c d cis16. dis32 ~]}
    dis8 fis16-. g-.
    |
    %% Measure 6
    \tempo \markup {
        \concat {
            (   
                \smaller \general-align #Y #DOWN \note #"4" #1
                " = "
                \smaller \general-align #Y #DOWN \note #"8" #1
            )
        }
    }
    \time 3/8
    cis8 \ppp g a
    |
    %% Measure 7
    \time 3/16
    gis16[ \< g' bes \sff]
    |
    %% Measure 8
    \tempo "calmer" 4 = 68
    \time 3/4
    <<
        {a2.:32 ~ }
        \\
        {a,,2 \laissezVibrer \pp \once \hideNotes a4 \<}
    >>
    |
    %% Measure 9
    <<
        {a''2.:32 ~ }
        \\
        {\once \hideNotes a2. \f \>}
    >>
    %% Measure 10
    <<
        {a2.:32 ~ }
        \\
        {r4 \mf r4 \tuplet 3/2 {c,,8 \< [ a e']}}
    >>
    |
    %% Measure 11
    <<
        {a'4:32}
        \\
        {\tuplet 3/2 {ais,8[ ais \fff ais]} r2}
    >>
    |
    %% Measure 12
    <<
        {a'2.:32 ~}
        \\
        {dis,,4 \laissezVibrer \ppp \< \hideNotes d d \mf \unHideNotes}
    >>
    |
    %% Measure 13
    <<
        {a''2.:32 ~}
        \\
        {\hideNotes d,,4 \> d d \unHideNotes }
    >>
    |
    %% Measure 14
    <<
        {a''2.:32 ~}
        \\
        {\hideNotes d,,4 \pp \< d d \f \unHideNotes}
    >>
    |
    %% Measure 15
    << 
        {a''2.:32 ~}
        \\
        {\hideNotes d,,4 d \fff \> d \unHideNotes}
    >>
    |
    %% Measure 16

}