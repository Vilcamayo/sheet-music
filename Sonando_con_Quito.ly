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
%Estrofa 1 cc.12-19 cc.20-27
\textMark "Estrofa 1"
r8 \acciaccatura d8 <a c>8 q <b gis> <a c> <c f> ~ |  <c  f > <c e>8 \arpeggio ~ <c e>2  | r8 <e gis>8 <f a> <e gis> <f a> <g b>  |  <e gis>2._\markup { \italic "rubato" } | r2. | r2. | r8. a16 c8 b a \acciaccatura a8 gis  |  a2. |  \break
<bes, bes'>4. <bes g'>8 <d bes'>4  |  <d bes'>4. <cis a'>4.  |  r8 a'4 a8 f4  |  <f a d>2. \arpeggio  |  r8 f, f' a f a  |  a8 ees'8~ees2  |   r8 <fisis, dis'>8 <gis e'>8 r8 <ais, fisis'> ( <b gis'> )  |  <gis e'>2.  
%Estrofa 2 cc.28-35
\textMark "Estrofa 2"
r8 dis (e) b' a (g)  |  f2.  |   r4. a8 b a  |  gis2.  |  r4 c,8 e d4  |  r4 c8 f e4  |  r4. f'8 e d  |  d2.  | \break
b8 b4 b8 b4  |  <ais cis>2.  |  r4. f'8 g f  |   <e b'>2.  | R2.*3 | 

}
  

  \layout {}
  \midi {}
}