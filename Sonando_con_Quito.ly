\version "2.26.0"

\header {
  title = "Soñando con Quito"
  composer = "Alex Alvear"
}

\score {
  \relative c' {
  \time 3/4
  \clef "treble_8"
  %Intro 1-11 
  \textMark "Intro"
  r8  <e, a>8 <a c>  <c e> <e g> <e a>  |  <e a> << { a16 ( g ) } \\ { e8 } >> <c e>2  |   
r8 << { \acciaccatura e8 d } \\ { b8} >> <b d> <a c> <gis b> <a c>  |  <b d>4 <a c>2 |
 r8 <e a>8 <a c>  <c e> <e g> <e a>  |  <e a> << { \tuplet 3/2 { g16 ( a  g ) } } \\ { e8 } >> <c e>2  |
 r8 << { \acciaccatura e8 d } \\ { b8} >> <b d> <ais cis> <b d> <b e>  |  <b d>2.  |  <d f>2 ~ <d f>8 <<{f16 e }\\{c}>>  |  <b d>4 <a c>2  |  r2. | \bar "||" \break
%Estrofa 1 cc.12
r8 \acciaccatura d8 <a c>8 q <b gis> <a c> <c f> ~ |  <c  f > <c e>8 \arpeggio ~ <c e>2  | r8 <e gis>8 <f a> <e gis> <f a> <g b>  |  <e gis>2._\markup { \italic "rubato" } | r2. | r2. | r8. a16 c8 b a \acciaccatura a8 gis  |  a2. |  
}
  

  \layout {}
  \midi {}
}