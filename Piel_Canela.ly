\version "2.26.0"

\header {
  title = "Piel Canela"
  composer = "Autor: Bobby Capó"
}

\score {
<<
%Guitarra 1
\new Staff \with {
    % Nombre que aparece en el primer sistema
    instrumentName = #"Guitarra 1"
    % Nombre corto para los sistemas siguientes
    shortInstrumentName = #"Gt. 1"
  }
  \relative c' {
  \clef "treble_8"
  %1-4 Intro
  \partial 4 g8 gis | a a a a e' e e e | g g g g g4 gis | a8 a g g f f e e | d2. g,8 gis | \break
  %5-12
  \repeat volta 2 { a a a a e' e e e | d4 c2 g8 gis | a a a a e' e e e | g2. f8 e |
  f e e d d c c b | b4 a2 e'8 d | e d d c c b b c | d2. g,8 gis |
  %13-20
  a a a a e' e e e | d4 c2 g8 gis | a a a a e' e e e | g2. f8 e |
  f e e d d c c b | b4 a2 e'8 d | e d d c c b b c | d4 r8 g8 a4 g |
  %21-28 Coro
  a4 r8 g a4 r8 g8  |  a4 r8 g a a a g  | a4 r8 g a4 r8 g8  |  a4 r8 g a4 g  |
  a4 r8 g a4 r8 g8  |  a4 r8 g f f f e  | g1~ | g2. fis8 g |
  %29-32
  bes2~ bes8 a a g | g2 f4 f8 e | e4 d d8 e f g | <f aes>4 r8 g8 a4 g | 
  %33-40
  a4 r8 g8 a4 r8 g8 | a4 r8 g a a a g  | a4 r8 g a4 g  | a4 r8 g a4 g  |
  a4 r8 g a4 r8 g8  |  a4 r8 g f f f e  | }
  \alternative {
    { c1~ | c2. g8 gis | }
    { c1 | c'4 r4 c r4 | \bar "|." }
   }
  }


%Guitarra 2
\new Staff \with {
    % Nombre que aparece en el primer sistema
    instrumentName = #"Guitarra 2"
    % Nombre corto para los sistemas siguientes
    shortInstrumentName = #"Gt. 2"
  }
  \relative c' {
  \clef "treble_8"
  %1-4 Intro
  \partial 4 g8 gis | f f f f b b b b | g g g e f2 | f'8 f e e d d c c | b2. g8 gis | 
  %5-12
  \repeat volta 2 {
  f f f f b b b b | b4 c2 g8 gis | f f f f b b b b | <c e>2. d8 c | 
  gis8 gis gis gis gis gis gis gis | gis4 a4 c4 a8 a | fis fis fis fis fis fis fis fis | g2 b4 g8 gis | 
  %13-20
  f f f f b b b b | b4 c2 g8 gis | f f f f b b b b | <c e>2. d8 c |
  b b gis gis e e e e  | gis4 a2 a8 a | fis fis fis fis fis fis fis c' | b4 r8 g8 a4 g |
  %Coro 21-28
  a4 r8 g a4 r8 g8  |  a4 r8 g a a a g  | a4 r8 g a4 r8 g8  |  a4 r8 g a4 g  |
  a4 r8 g a4 r8 g8  |  a4 r8 g g g g g  | e'1~ | e2. d8 d |
  %29-32
  cis2~cis8 cis cis cis | cis2 a4 a8 a | f4 f a8 a d e | d4 r8 g, a4 g |
  %33-40
  a r8 g8 a4 r8 g | a4 r8 a8 a a a g | a4 r8 g8 a4 g | a4 r8 g8 a4 g | 
  a4 r8 g8 a4 r8 g8 | a4 r8 g8 b b b c | }
  \alternative {
    { g1~ | g2. g8 gis | }
    { e'1 | c4 r4 e r4 | }
   }
  }


%Guitarra 3
\new Staff \with {
    % Nombre que aparece en el primer sistema
    instrumentName = #"Guitarra 3"
    % Nombre corto para los sistemas siguientes
    shortInstrumentName = #"Gt. 3"
  }
  \relative c {
  \clef "treble_8"
  %1-4 Intro
  \partial 4 r4 | d2 g4 g | e2 ees | d4 e f fis | g d g r4 | 
  %5-12
  \repeat volta 2 {
  d2 g4 g | c, r4 a' r4 | d,2 g4 g | c, g' c, r4 |
  e2 e | e4 e a r4 | d,2 d4 d | b b g' r4 |  
  %13-20
  d2 g4 g | c, g'8 gis a4 r4 | d,2 g4 g | c, g' c, r4 |
  e2 e | e4 f c2 | d2 d4 e8 fis | g4 r4 r2 | 
  %Coro 21-28
  d8 g g4 r4 g4 | d8 g d4 r4 g4 | c,8 e c4 r4 g'4 | c,8 e c4 r4 c8 cis | 
  d4 g r4 g4 | d8 g g4 r4 g4 | c,4 a' d4 b4 | e,4 c4 b'4 bes |
  %Coro 29-40
  a a a e | a a cis, cis | d2 c2 | b4 r4 r2 |
  d8 g g4 r4 g | d8 g d4 r4 g4 | c,8 e c4 r4 g' | c,8 e c4 r4 c8 cis | 
  d4 g r4 g | d8 g g4 r4 g | 
   }
  \alternative {
    { c,4 a' e' a, | c,8 g' a e' r2 | }
    { c,4 e8 g c, e g c | e4 r4 <c, e> r4 | }
   }
  }
>>
  \layout {}
  \midi {}
}