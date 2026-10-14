\version "2.26.0"

\header {
  title = "Bailando Solo"
  subtitle = "Guitarra 1"
  composer = "Los Bunkers"
}

\score {
<< 
  \new Staff
  \relative c' {
  \clef "treble_8"
  \key d \minor
    f8. f16 r8 d f8. f16 r8 d |
    f8. f16 r8 d f d f16 g r8 |
    a8. a16 r8 f a8. a16 r8 f |
    a8. a16 r8 f bes a g16 f r8 |
    f8. f16 r8 d f8. f16 r8 d |
    f8. f16 r8 d f d f16 g r8 |
    a8. a16 r8 f a8. a16 r8 f |
    a8. a16 r8 f bes a g16 f r8 | \bar "|."
  }
  \new TabStaff {
  \set TabStaff.minimumFret = #5
  \relative c' { 
f8. f16 r8 d f8. f16 r8 d |
    f8. f16 r8 d f d f16 g r8 |
    a8. a16 r8 f a8. a16 r8 f |
    a8. a16 r8 f bes a g16 f r8 |
    f8. f16 r8 d f8. f16 r8 d |
    f8. f16 r8 d f d f16 g r8 |
    a8. a16 r8 f a8. a16 r8 f |
    a8. a16 r8 f bes a g16 f r8 |
   }
  }
>>
  \layout {}
  \midi {}
}