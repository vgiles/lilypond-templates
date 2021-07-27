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
    \fff\>c a e \p
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
        {b'2.:32 ~}
        \\
        {dis,,4 \laissezVibrer \ppp \< \hideNotes d d \mf \unHideNotes}
    >>
    |
    %% Measure 13
    <<
        {b''2.:32 ~}
        \\
        {\hideNotes d,,4 \> d d \unHideNotes }
    >>
    |
    %% Measure 14
    <<
        {b''2.:32 ~}
        \\
        {\hideNotes d,,4 \pp \< d d \f \unHideNotes}
    >>
    |
    %% Measure 15
    << 
        {b''2.:32 ~}
        \\
        {\hideNotes d,,4 d \fff \> d \unHideNotes}
    >>
    |
    %% Measure 16
    << 
        {   \override Beam.gap-count = #3
            \repeat tremolo 8 { b''32. a }
            }
        \\
        {\hideNotes d,,4 d d \pp \unHideNotes}
    >>
    |
    %% Measure 17
    \time 4/16
    \textinst "play cluster between indicated notes"
    \parenthesize <e' e'>16 \fff [\parenthesize <c d'>16 \parenthesize <e,, d'>16 \parenthesize <e d'>16]
    |
    %% Measure 18
    \parenthesize <f' e'>16 [\parenthesize <d c'>16 \parenthesize <b' d'>16 \parenthesize <g' f'>16]
    |
    %% Measure 19
    \time 3/4
    \parenthesize <d, c'>2.:32
    |
    %% Measure 20
    \parenthesize <a' a'>2.:32
    |
    %% Measure 21
    \time 2/4
    \parenthesize <g, c'>2:32
    |
    %% Measure 22
    \once \override Beam.grow-direction = #RIGHT
    \once \override Beam.beam-thickness = #0.8
    % \featherDurations #(ly:make-moment 6/4)
    { \tuplet 5/4 {
        cis'16[ \p \< d b c dis ]
    }
    } 
    \textinst "pop string"
    \once \override NoteHead.style = #'cross
    a,4 \fff
    \bar "||" \break
    %% Measure 23
    \textinst "3-second pause before moving to next measure"
    \once \hideNotes c'2\fermata
    \bar "||" \break
    %% Measure 24
    \tempo "loose with rubato" 8 = 78
    \time 4/8
    r8 [cis \f \< a' b]
    |
    %% Measure 25
    \time 3/8
    gis [ b \fff a \p]
    |
    %% Measure 26
    fis16 [gis f g e g]
    |
    %% Measure 27
    \time 5/8
    cis,8 [ c \< d ees e16 \mf \> [ d]]
    |
    %% Measure 28
    e'4.:32 \p ~ e8:32 \once \override \noteHead.style = #'cross cis \sfz
    \break
    |
    %% Measure 29
    \tempo "urgent" 4 = 92
    \time 2/4
    \tuplet 7/4 {c16 \mp [b cis e c bes d~ ]}
    \tuplet 3/2 {d8 \< a16 g' g8:64 \f \< ~}
    |
    %% Measure 30
    \tuplet 5/4 {g16:128 \ff \> \glissando g,4 } r4 \f
    |
    %% Measure 31
    \tempo 8 = 78
    \time 3/8
    ais,8 \pp [a' g] 
    \break
    |
    %% Measure 32
    \time 5/16
    ais16 \< [aisih gisih gis fisih \p]
    %% Measure 33
    |
    eisih16 \> [f fis fih g \pp] 
    |
    %% Measure 34
    \time 3/4
    \once \override Beam.grow-direction = #RIGHT
    \once \override Beam.beam-thickness = #0.8
    \tuplet 5/4 {
        gih16 [a \< bes aisih ais]
    }
    <<
        {\tuplet 3/2 {dis8 \ff [d \once \override \NoteHead.style = #'cross a,,]}}
        \\
        {\tuplet 3/2 {cis'8 [d \once \override \NoteHead.style = #'cross a, \fff]}}
    >>
    \tuplet 3/2 {r8 [ fis' \p \< g16-. ais-. \!]}
    |
    %% Measure 35
    \time 2/4
    <<
        {\tuplet 3/2 {a'8 [b bes:64 ~] }}
        \\
        {\tuplet 5/4 {r4 \mf [a16, \p]}}
    >>
    <<
        {bes'4:32 ~}
        \\
        {\tuplet 5/4 {bes,16 [a g \< aes r16 \! \f]}}
    >>
    |
    %% Measure 36
    <<
        {bes'4:32 }
        \\
        {r16 [e \p c, dis \> ~] \tuplet 5/4 {dis [ e' \p cis cisih a,]}}
    >>
    |
    %% Measure 37
    \time 3/8
    e,8 [f gis'16-. a'-. \>]
    |
    %% Measure 38
    gis8 [e \p a ~]
    %% Measure 39
    \time 2/8
    a r8 
    |
    %% Measure 40
    \time 7/16
    \parenthesize <d, d'>16 [\ff q q q q q q]
    %% Measure 41
    \parenthesize <c c'>16 [ q q q q \parenthesize <g g'>16 \parenthesize <c c'>16]
    %% Measure 42
    \time 4/16
    \parenthesize <e e'>16 [\parenthesize <b, g'>16 \< \parenthesize <f' f'>16 \parenthesize <d' d'>16]
    |
    %% Measure 43
    \time 2/8
    \parenthesize <e e'>4:32 \fff
    \bar "|."
}