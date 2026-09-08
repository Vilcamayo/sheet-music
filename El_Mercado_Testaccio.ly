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
  r1 | r8 b b a b16 a b4 a8 | g b b a b16 a b4 b16 c | d8 d d c4 d8 a4 |
  }
\new TabStaff \relative c'' {
  \set TabStaff.minimumFret = #9
  r1 | r8 b b a b16 a b4 a8 | g b b a b16 a b4 b16 c | d8 d d c4 d8 a4 |
  }
>>
  \layout {}
  \midi {}
}