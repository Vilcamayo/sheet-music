\version "2.26.0"

\header {
  title = "Help"
  composer = "The Beatles"
}

\score {
<<
  \new Staff 
  \relative c {
  \clef "treble_8"
  \key a \major 
  %intro
  b \mark "Intro" b b a | g g g fis | e e e e | a1 |
  %estrofa 1
  a4 \mark "Estrofa 1" a a a | cis cis cis cis | fis, fis fis fis | d' g, a a | 
  a4 a a a | cis cis cis cis | fis, fis fis fis | d' g, a a |
  %coro 1
  b \mark "Coro 1" b b b | b b b a | g g g g | g g g fis | e e e e | e e e e | a1 | a4 a a a | 
  %estrofa 2
  a4 \mark "Estrofa 2" a a a | cis cis cis cis | fis, fis fis fis | d' g, a a | 
  a4 a a a | cis cis cis cis | fis, fis fis fis | d' g, a a |
  %coro 2
  b \mark "Coro 2" b b b | b b b a | g g g g | g g g fis | e e e e | e e e e | a1 | a4 a a a | \break
  %estrofa 3
  a1 \mark "Estrofa 3" | cis | fis, | d'4 g, a2 |  
  a4 a a a | cis cis cis cis | fis, fis fis fis | d' g, a a | 
  %coro 3
  b \mark "Coro 3" b b b | b b b a | g g g g | g g g fis | e e e e | e e e e | a1 |
  %final
  fis4 \mark "Final" fis fis fis | a1 \bar "|." |   
  }
  \new TabStaff \relative c {
  %intro
  b4 \mark "Intro" b b a | g g g fis | e e e e | a1 |
  %estrofa 1
  a4 \mark "Estrofa 1" a a a | cis cis cis cis | fis, fis fis fis | d' g, a a | 
  a4 a a a | cis cis cis cis | fis, fis fis fis | d' g, a a |
  %coro 1
  b \mark "Coro 1" b b b | b b b a | g g g g | g g g fis | e e e e | e e e e | a1 | a4 a a a | 
  %estrofa 2
  a4 \mark "Estrofa 2" a a a | cis cis cis cis | fis, fis fis fis | d' g, a a | 
  a4 a a a | cis cis cis cis | fis, fis fis fis | d' g, a a |
  %coro 2
  b \mark "Coro 2" b b b | b b b a | g g g g | g g g fis | e e e e | e e e e | a1 | a4 a a a | \break
  %estrofa 3
  a1 \mark "Estrofa 3" | cis | fis, | d'4 g, a2 |  
  a4 a a a | cis cis cis cis | fis, fis fis fis | d' g, a a | 
  %coro 3
  b \mark "Coro 3" b b b | b b b a | g g g g | g g g fis | e e e e | e e e e | a1 |
  %final
  fis4 \mark "Final" fis fis fis | a1 \bar "|." |
  }
>>
  \layout {}
  \midi {}
}