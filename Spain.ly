\version "2.26.0"

\header {
  title = "Spain"
  composer = "Chick Corea"
}

\score {
  \relative c'' {
  \tempo 4=120
  \clef "treble_8"
  \key b \minor
    r1 | cis16 e (cis) a e\1 g b g( e) b g'(e) b fis'(e) b | d8. cis16 d e fis (e) g (fis) g a (g) a bes bes | bes (a) g fis e d cis8~cis2 |
    \tuplet 6/4 {e,,16 fis g a b c } \tuplet 6/4 { d e fis g a b\3 } \tuplet 6/4 { cis d e fis\2 g a }
  
  }

  \layout {}
  \midi {}
}