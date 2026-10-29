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


 

metalofono = \new Staff {
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
c ( d e d c e d c )  |  d4 r4 g8 ( f e ) e  |  f-. a (b) c~c |  \appoggiatura g8 f4 e ) d4. (e16 f ) | \break
 %95
 g8 [ ( a f d ) ] c4 ( \acciaccatura e8 d c )  |  c (d16 e f g a b ) c4. (b8 |  \appoggiatura b a4 g ) a4. ( g8  |  \appoggiatura g8 f4 e ) d4. (e16 f ) | \break
%99
g8 [ ( a f d ) ] c4 ( \acciaccatura e8 d8. c16 )  |  c2 (c4.) bes8\pp ( | a2 ) g ( | g8) f4 e d8-. [ (d-. d-.) ] |  d1\fermata \espressivo | e1\pp \fermata \bar "|." 
   }
  }

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