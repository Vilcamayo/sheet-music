\version "2.26.0"
addStaccato =
#(define-music-function (music) (ly:music?)
   (map-some-music
     (lambda (m)
       (if (music-is-of-type? m 'note-event)
           (begin
             (set! (ly:music-property m 'articulations)
                   (cons (make-music 'ArticulationEvent 'articulation-type "staccato")
                         (ly:music-property m 'articulations)))
             m)
           #f))
     music)
   music)

cuartina = {
\set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
}

cuartina = {
\set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = 1,1,1,1
}


 

metalofono = \new Voice <<
\relative c {

\clef "treble_8"

\tempo "POCO ADAGIO CANTABILE"
  \time 2/2

\partial 2
%1
e4.\p ( g8    |   c4 b d c )    |   f, ( e ) f' ( e    |    b c ) a2 (    |   g ) e4. ( g8    | \break
%5
c4 b d c )    |   f, ( e ) f' ( e     |     b c ) a2 (    |    g ) b4 ( c    |     b ) r4 b ( c    | \break
%10
b ) r4 e4 ( d    |    c2. ) c8 (b8    |    b2) \fermata <c c,>2\fz    |     c8. ( d16 ) e4 f4.\fz ( e8 )    |    b4 ( c ) b4.\p ( c16 d ) | \break
%15
c4 ( a8 d) c4 (b)   |   c2 <c c,>2\fz    |     c8. ( d16 ) e4 f4.\fz ( e8 )    |     b4 ( c ) b4.\p ( c16 d )    |     c4 ( a8 d) c4 (b) | c2 \bar "||"  \break  

%20
\mark "Var. I"
\partial 2 c4._\markup { \italic "sempre piano" } ( d8 ) | e4 ( d f e )   |   d8 (b c4) a' (g   |   \break
%23
f e)   << { \after 8 \turn s4. } \\  {d4  (e8 c) } >>   |  g'2 c,4. ( d8  ) | e4 ( d f e )  |  \break
%26
 d8 (b c4) a' (g   |  f e)   << {  \after 8 \turn s4. } \\  {d4  (e8 c) } >>   |  g'2 d4 ( e ) |  \break
%29
 d8 ( b g4 ) f' ( e  ) | d8 ( b g4 ) g' ( f  |  e4. ) e8 fis4 fis8 ( g )  |  \break
%32
g2 c4.\fz ( b8  |  \appoggiatura b a4 g ) a4.\fz ( g8 |  \appoggiatura g8 f4 e ) d4.\p (e16 f ) | \break
%35
     g8 ( a f d ) c4 ( \acciaccatura e8 d c )  |  c4 r4 c'4.\fz ( b8  |  \appoggiatura b a4 g ) a4.\fz ( g8  | \break
%38
 \appoggiatura g8 f4 e ) d4.\p (e16 f ) | g8 ( a f d ) c4 ( \acciaccatura e8 d8. c16 )  |  c4 r4 \bar "||" \break
       
%41
\partial 2
\mark "Var. II"
e,4. (f8 | g4 f) b( c | b8 d4 c8 ) c4 (b | a g ) b (c | b) r4  e,4. (f8 |   \break
%45
g4 f) b( c | b8 d4 c8 ) c4 (b | a g ) b (c | b) r4 b (c) |  \break
%49
b2 b4 (c) | b2 <d, ( b'>4 <d ) g> | <c g'>2 c'4. (e8) | e4 (d) e4 (d |   \break

%53
c b) c4. (b8 | a4 g ) f'16 (e f e f8 e16 d) | c4 ( a8 f) e4 (f) | e4 r4  e'4 (d |
\break

%57
c b) c4. (b8 | a4 g ) f'16 (e f e f8 e16 d) | c4 ( a8 f) e4 (f) | e4 r4 \bar "||" \break

%61
\partial 2
\mark "Var. III"
r2 | r1 | b'8 a'4 g f e8~ | e8 d4 c c c8 |
\break

%64
b2 r8 a8 (e fis) | g1 ~ | g8 f'4 e16 (d) cis8 (d b c) | a (b gis a) f8 fis4 d8 |
\break

%68
g2 b4 ( c) | b4 r4 d4 c | b r4 g4 (b) | c2 ~ c8 ees (d c) |
\break

%72
b2 a4. (g8) | cis (d b c) r2 | r2 r8 a8 (g b) | r8 a4 ( f8 e4 f) | \break

%76
e4 r4 a4. ( g8 )    |     cis8 (d b c) r2    |    r2 r8 a (g b)    |    r8 a4 ( f8 e4 f) |
e4 r4 \bar "||"
\break

\mark "Var. IV"
%81
\partial 2
e4 (fis |   g2) d'4 (c)   |  
   gis (a) c8. (d16) e4    |    a,8. (b16 c2) c4   |   b2 e4 (fis    |   g2) d'4 (c) | \break

%86
gis (a) c8. (d16 e4)   |   a,8. (b16 c2) c4   |   b2 b4 (c   |   b) r4 a8 (b c) c-.   |   b4 r4 r8 e4 d8 ( |  \break

%91
d) g, (c b a c b a )   |   b2 c8 ( d e ) g~   |   g f4 e8 a, ( b c cis )   |   d4 ( c!2 ) b8 (c16 d)   |   
\break

%95
c4 a8 (d) c4 (b)   |   c r4 e8 (f dis e)   |   cis (d! b c) c4. (bes8)   |   a (b c b) a4 g~ |
\break

%99
g8 e ( f a e4) \acciaccatura g8 f4   |    e4. (f8) g (fis g) g   |    g4\pp (f!2 e8 d)   |   c2 (b8) b-. ( b-. b-. )   |   b1\fermata \espressivo    |    c\pp\fermata \bar "|."

 }
\relative c {
\clef "treble_8"
\tempo "POCO ADAGIO CANTABILE"
  \time 2/2
 \cuartina

 %1
\partial 2
c4\p r4 |
 r2 g'4-. ( g-. )  | b,8 ( d c4 ) r2 | d4 ( e a c,) | b2 c4 r4 |
 \break
 %5
r2 g'4-. ( g-. )  | b,8 ( d c4 ) r2 | d4 ( e a c, ) | b2 g'4 g | g4 r4 d4 ( c8 e | \break
%10
g4 ) r4 g ( a8 b | c4 ) c, a' a8 ( g ) | g2\fermata <c, g'>2\fz | a'8. b16 c4 c4.\fz c8 | <g d'>4-. <g e'>4-. g2\p |
\break
%15
c,4 ( a'8 f) e4 ( \acciaccatura g8 f4 ) | e2 <c g'>\fz | a'8. b16 c4 c4.\fz c8 | <g d'>4-. <g e'>4-. g2\p |
c,4 ( a'8 f) e4 ( \acciaccatura g8 f4 ) | e2 \bar "||" \break

%20
\partial 2 
\mark "Variación I"
r2 | R1*19 | r2 \bar "||" 

%41
\partial 2 
\mark "Var. II"
r2 | r2 g,2 ( | g4) c r2 | r2 g2 ( | g4) r4 r2 | 
\break
%45
r2 g2 ( | g4) c r2 | r2 g2 ( | g4 ) r4 g2~|
\break
%49
g1~ | g2 <g ( d'>4 b ) | c2 (a) | g2 r2 |
\break
%53
r1 | r2 b4.\fz ( c16 d ) | e8 ( f ) <f, f'>4 g2 | c4 r4 r2 |
\break
%57
r1 | r2 b4.\fz ( c16 d ) | e8 (f) <f, f'>4 g2 | c4 r4 \bar "||" \break

%61
\partial 2
\mark "Var. III"
c'4. ( d8 ) | e4 (d f e) | d8 (b c4) a' (g | f e ) << { \after 8 \turn s4. } \\ {d4 (e8 c) }>> |  
\break
%64
g'2 c,4. ( d8  ) |   e4 ( d f e )  |   d8 (b c4) a' (g   |   f e)   << { \after 8 \turn s4. } \\  {d4 (e8 c) } >>  |   
\break
%68
   g'2 d4 ( e ) |  d8 ( b g4 ) f' ( e  ) | 
    d8 (b g4) g' ( f  |  e4. ) e8 fis4 fis8 ( g )  | 
\break
%72
 g2 c4. ( b8  ) |  \appoggiatura b ( a4 g) a4. ( g8 ) |  \appoggiatura g8 ( f4 e ) d4. (e16 f ) | g8 ( a f d ) c4 (  \acciaccatura e8  d8. c16 )  | 
\break
%76
 c8 ( d16 e f g a b c4.)  ( b8 ) |  \appoggiatura b a4 ( g ) a4. ( g8  ) |  \appoggiatura g8 f4 ( e ) d4.  (e16 f ) | g8 ( a f d ) c4 ( \acciaccatura e8 d8. c16 )  |  c4 r4 \bar "||" 
\break

%81
\partial 2
\mark "Var. IV"
c,2  | c4 b2 c4 (  | b4 a ) f' (e  | f g a2 ) |  g4 r4 c2 ( | c4 ) b2 c4 (  | \break 
 %86
 b4 a4) f' ( e   |   f g a2 )  |  b,4 r4 g'4 ( fis)  |  g4 ( f8 e ) d4 ( c8 fis )   | g4. ( f8 ) e ( cis d b )  |  \break
%91
c ( d e d c e d c )  |  
d4 r4 g8 ( f e ) e  |  
f-. a (b) c~c c,16 ( d e8 a, ) |
a8 ( b c b ) a4 (g | \break
 %95
 g8 ) c4 a'8 e4 \acciaccatura g8 e4 |
 e4 r4 a4.  g8 (|
g) f4 e8 dis (e f cis ) |  
d ( gis, a b) c c ( b d) |
%99
c ( e a, f' ) g, (c b) b |
<c, c'>8 ( e g a ) bes ( a bes e,) |
f\pp (g a b) c (b c bes) |
a4 g f8 <f aes>-. ( q-. q-. )|   
<f aes>1\fermata \espressivo | 
<e g>1\pp \fermata \bar "|." 
   }
  >>

\header {
  title = "Cuarteto de cuerdas en Do Mayor"
  subtitle = "Opus 76 No. 3 (2o. Movimiento)"
  composer = "Joseph Haydn"
}

\paper {
  #(set-paper-size "government-legal")
}

\score {
\metalofono

  \layout {}
  \midi {}
}