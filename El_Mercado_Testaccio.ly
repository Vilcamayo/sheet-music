\version "2.26.0"

\header {
  title = "El Mercado Testaccio"
  composer = "Inti Illimani"
}

\score {
<<
\new Staff
  \relative c'' {
  \clef "treble_8"
  \key g \major
  %1-9
  r1 | r8 b b a b16 a b4 a8 | g b b a b16 a b4 b16 c | d8 d d c4 d8 a4 | d8 c4 d8 a4 d8 c~ |
  c8 b b a b16 a b4 a8 | g b b a b16 a b4 b16 c | d8 d d c4 d8 a4 | d8 e d c b c b a | 
  %10-17
  g e' e dis e16 dis e4 c8 | b e4 g8 fis e dis e | d4 c b c8 b~ | b ais b c b ais b g | 
  e e' e dis e16 dis e4 c8 | b e4 g8 fis e d c~ | c b4 ais8 b c b4 | ais8 b c b4 ais8 b c~ |
  %18-19
  c8 b4 ais8 b c b d~ | d c4 b a fis16 gis |
  %20
  a8 a a gis4 a8 e4 | a8 c4 b a fis16 gis | a8 a a gis4 a8 dis,4 | a'8 c4 b a g8~ |
  g g g fis g16 fis g4 fis8 | e g g fis g16 fis g4 fis8 | e g g fis g16 fis g4 a8 | b2 <dis, fis b> \arpeggio

  }
\new TabStaff \relative c'' {
  \set TabStaff.minimumFret = #9
  %1-9
  r1 | r8 b b a b16 a b4 a8 | g b b a b16 a b4 b16 c | d8 d d c4 d8 a4 | d8 c4 d8 a4 d8 c~ |
  c8 b b a b16 a b4 a8 | g b b a b16 a b4 b16 c | d8 d d c4 d8 a4 | d8 e d c b c b a | 
  %10-17
  g e' e dis e16 dis e4 c8 | b e4 g8 fis e dis\2 e | d4\2 c b c8 b~ | b ais b c b ais b g |
  e e' e dis e16 dis e4 c8 | b e4 g8 fis e d c~ | c b4 ais8 b c b4 | ais8 b c b4 ais8 b c~ |
  %18-19
  c8 b4 ais8 b c b d~ | d c4 b a fis16 gis\3 |
  %20
  a8 a a gis4\3 a8 e4\3 | a8 c4 b a fis16 gis\3 | a8 a a gis4\3 a8 dis,4\3 | a'8 c4 b a g8~ |
  g g g fis g16 fis g4 fis8 | e\3 g g fis g16 fis g4 fis8 | e\3 g g fis g16 fis g4 a8 | b2 <dis,\3 fis\2 b\1> \arpeggio \bar "||"

  }
>>
  \layout {}
  \midi {}
}