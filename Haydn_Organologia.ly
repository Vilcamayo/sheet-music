\version "2.26.0"

\header {
  title = "Cuarteto No.3 Opus 76, El Emperador"
  composer = "Joseph Haydn"
}

\score {
\transpose c' g'
  \relative g {
  \key c \major
  \tempo "POCO ADAGIO CANTABILE"
  \time 2/2
{
 %1
  \partial 2 c4.\p ( d8  | 
  e4 d f e )   |   d8 (b c4) a' (g   |   f e)   \after 8 \turn d4  (e8 c)  |  g'2 c,4. ( d8  | \break 
  %5
    e4 d f e )  |   d8 (b c4) a' (g   |   f e)   d4  (e8 c)   |  g'2 d4 ( e  |  d8 b g4 ) f' ( e  |  \break
    %10
    d8 b g4 ) g' ( f  |  e4. ) e8 fis4 fis8 ( g )  |  g2\fermata c4.\fz ( b8  |  \appoggiatura b a4 g ) a4.\fz ( g8 |  \appoggiatura g8 f4 e ) d4.\p (e16 f ) | \break
    %15
    g8 ( a f d ) c4 ( \acciaccatura e8 d c )  |  c2 c'4.\fz ( b8  |  \appoggiatura b a4 g ) a4.\fz ( g8  |  \appoggiatura g8 f4 e ) d4.\p (e16 f ) | g8 ( a f d ) c4 ( \acciaccatura e8 d c )  |  c2 \bar "||" \break
  }
}
  \layout {}
  \midi {}
}