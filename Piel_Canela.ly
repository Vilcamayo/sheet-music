\version "2.26.0"

\header {
  title = "Piel Canela"
  composer = "Autor: Bobby Capó"
  arranger = "Arreglo: Myrna L. Pérez"
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
  a a a a e' e e e | d4 c2 g8 gis | a a a a e' e e e | g2. f8 e |
  f e e d d c c b | b4 a2 e'8 d | e d d c c b b c | d2. g,8 gis |
  %13-20
  a a a a e' e e e | d4 c2 g8 gis | a a a a e' e e e | g2. f8 e |
  f e e d d c c b | b4 a2 e'8 d | e d d c c b b c | d4 r8 g8 a4 g |
  %21-28 Coro
  a4 r8 g a4 r8 g8  |  a4 r8 g a a a g  | a4 r8 g a4 r8 g8  |  a4 r8 g a4 g  |
  a4 r8 g a4 r8 g8  |  a4 r8 g f f f e  | g2.
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
  \partial 4 g8 gis | f f f f b b b b | g g g g f2 | f'8 f e e d d c c | b2. g8 gis | 
  %5-12
  f f f f b b b b | b4 c2 g8 gis | f f f f b b b b | e2. d8 c | 
  gis8 gis gis gis gis gis gis gis | gis4 a2 a8 a | fis fis fis fis fis fis fis fis | g2. g8 gis | 
  %13-20
  f f f f b b b b | b4 c2 g8 gis | f f f f b b b b | e2. d8 c |
  b b gis gis e e e e  | gis4 a2 a8 a | fis fis fis fis d d d d | g4 r8 g8 a4 g |
  %Coro
  a4 r8 g a4 r8 g8  |  a4 r8 g a a a g  | a4 r8 g a4 r8 g8  |  a4 r8 g a4 g  |
  a4 r8 g a4 r8 g8  |  a4 r8 g g g g g  | e'2.
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
  d2 g4 g | c, r4 a' r4 | d,2 g4 g | c, g' c, r4 |
  e2 e | a4 e a r4 | d,2 d4 d | g b, g' r4 |  
  %13-20
  d2 g4 g | c, g'8 gis a4 r4 | d,2 g4 g | c, g' c, r4 |
  e2 e | a4 f a r4 | d,2 d4 d | g1 | 
  }
>>
  \layout {}
  \midi {}
}