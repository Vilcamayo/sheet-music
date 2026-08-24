\header {
title = "Por qué no se van"
poet = "Jorge González"
composer = "Los Prisioneros"
}

\markup {
  \vspace #1 % Espacio en blanco antes de los acordes
  \center-column {
    % \line organiza los diagramas de forma horizontal
    \fill-line {
    
    \line {
      \pad-markup #2 % Añade espacio a los lados de cada diagrama
      \center-column { "C" \fret-diagram-terse "x;x;x;9;8-(;8-);" }
      \pad-markup #2
      \center-column { "F" \fret-diagram-terse "x;x;7;5;6;x;" }
      \pad-markup #2
      \center-column { "Am" \fret-diagram-terse "x;x;x;5-(;5;5-);" }
      \pad-markup #3
      \center-column  { \concat { "A" \flat } \fret-diagram-terse "x;x;x;5;4-(;4-);" }
      \pad-markup #4
      \center-column { \concat { "B" \flat } \fret-diagram-terse "x;x;x;7;6-(;6-);" }
     }
     
    }
    \vspace #-2
    \fill-line {
    \null
     \line {
      \pad-markup #2 % Añade espacio a los lados de cada diagrama
      \center-column { "C" \fret-diagram-terse "x;x;x;5;5;3;" }
      \pad-markup #2
      \center-column { "Cmaj7" \fret-diagram-terse "x;x;x;4;5;3;" }
      \pad-markup #2
      \center-column { "C7" \fret-diagram-terse "x;x;x;3-(;5;3-);" }
      \pad-markup #3
      \center-column  { "Dm" \fret-diagram-terse "x;x;x;7;6;5;" }
      \pad-markup #4
      \center-column { "Fm" \fret-diagram-terse "x;x;x;10;9;8;" }
      \pad-markup #5
      \center-column { "G" \fret-diagram-terse "x;x;x;7;8;7;" }
     }
     \null
    }
   }
   
}

\score {
<<

\new ChordNames \chordmode { 
%1-9 intro
s1 | c | s1 | f | s1 | a:m | s1 | aes | bes | 
%10-27 estrofa
c1 | s1 | c:maj | s1 | c:7 | s1 | d:m | s1 |
c1 | s1 | c:maj | s1 | c:7 | s1 | d:m | s1 | f:m | g |
%28-35 coro
c | s1 | f | s1 | a:m | s1 | aes | bes |
%36-53 estrofa 2
c1 | s1 | c:maj | s1 | c:7 | s1 | d:m | s1 |
c1 | s1 | c:maj | s1 | c:7 | s1 | d:m | s1 | f:m | g |
%54-61 coro
c | s1 | f | s1 | a:m | s1 | aes | bes |
%62-65 interludio
aes | bes | aes | bes |
%66-83 solo
s1*18
%84-99 coro
s1*16
%100-104 final
aes1 | bes | aes | bes | c |
} 

\new Staff \relative { 
\clef "treble_8"

%1-9

r1 \bar "||" | \repeat percent 2 { \repeat percent 4 { \textMark \markup \box {\bold "Intro"} r8  <e' g c>8 } } | 
\repeat percent 2 { \repeat percent 4 {r8 <a, c f> } }
\repeat percent 2 { \repeat percent 4 {r8 <c e a>}}|
\repeat percent 4 {r8 <c ees aes>} |
\repeat percent 4 {r8 <d f bes>}| \bar "||" \break
%10-17
\repeat percent 2 { \repeat percent 4 {\textMark \markup  \box {\bold "Estrofa 1"} r8 <c e g>}}|
\repeat percent 2 { \repeat percent 4 {r8 <b e g>}}|
\repeat percent 2 { \repeat percent 4 {r8 <bes e g>}}|
\repeat percent 2 { \repeat percent 4 {r8 <d f a>}}| \break
%18-27
\repeat percent 2 { \repeat percent 4 {r8 <c e g>}}|
\repeat percent 2 { \repeat percent 4 {r8 <b e g>}}|
\repeat percent 2 { \repeat percent 4 {r8 <bes e g>}}|
\repeat percent 2 { \repeat percent 4 {r8 <d f a>}}|
\repeat percent 4 {r8 <f aes c>} |
\repeat percent 4 {r8 <d g b>} | \bar "||" \break 
%28-35 coro
\repeat percent 2 { \repeat percent 4 {\textMark \markup \box {\bold "Coro"} r8 <e g c>8 } } | 
\repeat percent 2 { \repeat percent 4 {r8 <a, c f> } }
\repeat percent 2 { \repeat percent 4 {r8 <c e a>}}|
\repeat percent 4 {r8 <c ees aes>} |
\repeat percent 4 {r8 <d f bes>}| \bar "||" \break
%36-53 estrofa 2
\repeat percent 2 { \repeat percent 4 {\textMark \markup  \box {\bold "Estrofa 2"} r8 <c e g>}}|
\repeat percent 2 { \repeat percent 4 {r8 <b e g>}}|
\repeat percent 2 { \repeat percent 4 {r8 <bes e g>}}|
\repeat percent 2 { \repeat percent 4 {r8 <d f a>}}| \break
\repeat percent 2 { \repeat percent 4 {r8 <c e g>}}|
\repeat percent 2 { \repeat percent 4 {r8 <b e g>}}|
\repeat percent 2 { \repeat percent 4 {r8 <bes e g>}}|
\repeat percent 2 { \repeat percent 4 {r8 <d f a>}}|
<f aes c>1 |
<d g b>1 | \bar "||" \break 
%54-61 coro
\repeat volta 2 {
\repeat percent 2 { \repeat percent 4 {\textMark \markup \box {\bold "Coro"} r8 <e g c>8 } } | 
\repeat percent 2 { \repeat percent 4 {r8 <a, c f> } }
\repeat percent 2 { \repeat percent 4 {r8 <c e a>}}|
\repeat percent 4 {r8 <c ees aes>} |
\repeat percent 4 {r8 <d f bes>}|  \break
 }
%62-65 interludio
\textMark \markup \box { \bold "Interludio" } \repeat percent 4 {r8  <c ees aes>} |
\repeat percent 4 {r8 <d f bes>}|  
\repeat percent 4 {r8 <c ees aes>} |
\repeat percent 4 {r8 <d f bes>}| \break
%66-83 Solo
\textMark \markup \box { \bold "Solo" } f'8 c4 e8 c4 f8 c8~ | c8 e4. c8 c16 c c8 c | f8 b,4 e8 b4 f'8 b,8~ | b8 e4. b8 b16 g b8 g | \break
f'8 bes,4 e8 bes4 f'8 bes,8 ~ | bes8 e4. bes8 bes16 bes ~ bes8 bes | a4 a8 a4 a8 a4 | r8 d,8 d d d d d d | \break
f'8 c4 e8 c4 f8 c8~ | c8 e4. c8 c16 c c8 c | f8 b,4 e8 b4 f'8 b,8~ | b8 e4. b8 b16 g b8 g | \break
f'8 bes,4 e8 bes4 f'8 bes,8 ~ | bes8 e4. bes8 bes16 bes ~ bes8 bes | a4 a8 a4 a8 a4 | r8 d,8 d d d d d d | 
\acciaccatura <e g>8 \glissando <f aes>4. c'8 aes8 aes c4 | \acciaccatura q8 \glissando <g b>4. d'8 b4 g | \bar "||" \break
%84-99
\textMark \markup \box { \bold "Coro"} \compressEmptyMeasures R1*16 | \bar "||"
%100-104
%62-65 interludio
\textMark \markup \box { \bold "Final" } \repeat percent 4 {r8 <c, ees aes>} |
\repeat percent 4 {r8 <d f bes>}|  
\repeat percent 4 {r8 <c ees aes>} |
\repeat percent 3 {r8 <d f bes>} r4 | <e g c>1 | \bar "|." \break

}


>>
\layout {}
\midi {}
}