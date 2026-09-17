\version "2.26.0"
\global = {
\clef "treble_8"
\time 6/8
\key b \minor
  \partial 16
}
ac = #acciaccatura
\header {
  title = "Caramba yo soy dueño del Barón"
  composer = "Composer"
}

\score {
\new GrandStaff
<<
  \new Staff  \relative c'' {
  \global
  %1-4
    b16 | 
    b8 d b e8 r8 \ac e8 d |
    cis8.-. b8 cis16 b cis ais8 r8 |
    r8 fis8.-. d'16 cis8.-. b8 ais16 |
    cis8. b8 r16 d4\prall d16 cis |
  %5-8
    b8. a g8 r8. cis16 |
    b8. ais8 gis16 ais b cis8 r8 |
    r8 fis8. d16 e8. d8 ais16 |
    cis8. b fis8 

  }
  \new Staff \relative c'{
  \global 
  c}
  
>>
  \layout {}
  \midi {}
}