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
    d8. d16 r8 a d8. d16 r8 a |
    d8. d16 r8 a d a d16 c r8 |
    f8. f16 r8 c f8. f16 r8 c |
    f8. f16 r8 c g' f e16 c r8 |
    d8. d16 r8 a d8. d16 r8 a |
    d8. d16 r8 a d a d16 c r8 |
    f8. f16 r8 c f8. f16 r8 c |
    f8. f16 r8 c g' f e16 c r8 | \bar "|."
  }
  \new TabStaff {
  \relative c' { 
  d8. d16 r8 a d8. d16 r8 a |
    d8. d16 r8 a d a d16 c r8 |
    f8. f16 r8 c f8. f16 r8 c |
    f8. f16 r8 c g' f e16 c r8 |
    d8. d16 r8 a d8. d16 r8 a |
    d8. d16 r8 a d a d16 c r8 |
    f8. f16 r8 c f8. f16 r8 c |
    f8. f16 r8 c g' f e16 c r8 | \bar "|."
   }
  }
>>
  \layout {}
  \midi {}
}