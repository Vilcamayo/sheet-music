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
<<{e4. ( g8 | 
c4 b d c ) | 
f, ( e) f' (e |
b c) a2 ( | 
g  ) e4. ( g8 | \break
%5
c4 b d c ) | 
f, ( e) f' (e |
b c) a2 ( | 
g  ) b4 ( c |
 b) r b (c |
 \break
 %10
 b) r4 e d |
 c2. <a c>8 ( <g b> ) |
 <g b>2\fermata c4. c8 |
 
}
\\
%VOCES GRAVES_____________________
%alzar
{c,4\p r4 |
%1
 r2 <b g' >4-. ( <c g' >-. ) |
 <<\new Voice { \shiftOn b8 ( d c4 ))}\\{g s4 r2 | }>> 
 <d' g,>4 ( <e c> <a f,> <c, fis,> ) | 
 <b g>2 c4 r4 | 
 \break
 %5
 r2 <b g' >4-. ( <c g' >-. ) |
 <<\new Voice { \shiftOn b8 ( d c4 ))}\\{g s4 r2 | }>> 
 <d' g,>4 ( <e c> <a f,> <c, fis,> ) | 
 <b g>2 <g' g,>4 q |
 q r4 <<\new Voice {\shiftOn d  c8 e | } \\{g,4 g |}>>

 %10
 <g' g,> r4 <<\new Voice {\shiftOn g4 ( \shiftOn a8  b |
 c4 ) c, a' s8 ( s ) |
 s2 }\\{e,4 f8 ( g) | a2 d4 d | g,2\fermata } >> << {<c g'>2 }\\{e4. e8 | }>>
 f4 c f, c' | g c 

 }
 >>   
 }
}
\header {
  title = \markup \fontsize #3 \bold "Poco adagio cantabile"
  subtitle = \markup \fontsize #1 \italic "De: Cuarteto de cuerdas en do mayor, Op. 76, No. 3 \"Emperador\" (Hob. III:77)"
  composer = \markup \bold "Franz Joseph Haydn"
  
  % Opcional: Elimina el pie de página por defecto de LilyPond si es para una edición limpia
  tagline = ##f 
}

\paper {
  #(set-paper-size "government-legal")
}

\score {
\metalofono

  \layout {}
  \midi {}
}