\version "2.26.0"

\header {
  title = "Preludio en Re menor (BWV 999)"
  subtitle = "Original en Do menor"
  composer = "J.S. Bach (1685-1750)"
}

\score {
<<
  \relative c' {
  \clef "treble_8"
  \key d \minor
  \time 3/4
  %1-6
  r16 d f a f d f d a d f, d' |
  r16 d f a f d f d a d f, d' | \break
  r d g bes g d g d bes d g, d' | 
  r d g bes g d g d bes d g, d' | \break
  r cis e g e cis e cis bes cis g cis |
  r cis e g e cis e cis bes cis g cis | \break
  %7-8
  r a d f d a d a f a d, a' |
  r a d f d a d a f a d, a' | \break
  }
  \\
  \relative c {
  d2
  }

>>

  \layout {}
  \midi {}
}