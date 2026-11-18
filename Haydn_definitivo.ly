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

guitarrauno = {
 \new Staff {
 \clef "treble_8"
  \relative c' {
  \tempo "POCO ADAGIO CANTABILE"
  \time 2/2
 \cuartina
 %1
  \partial 2 c4.\p\3 ( d8  | 
  e4 d f e )   |   d8 (b c4) a' (g   |   f e)   \after 8 \turn d4  (e8 c)    |  g'2 c,4. ( d8  | \break 
  %5
    e4 d f e )  |   d8 (b c4) a' (g   |   f e)   d4  (e8 c)   |  g'2 d4-3 ( e  |  d8 b g4 ) f' ( e  |  \break
    %10
    d8 b g4 ) g' ( f  |  e4. ) e8 fis4 fis8 ( g )  |  g2\fermata c4.\fz-4 ( b8  |  \appoggiatura b a4 g\2-4 ) a4.\fz ( g8 |  \appoggiatura g8 f4 e ) d4.\p\2-1 (e16 f ) | \break
    %15
    g8 ( a f d ) c4 ( \acciaccatura e8 d c )  |  c2 c'4.\fz ( b8  |  \appoggiatura b a4 g ) a4.\fz ( g8  |  \appoggiatura g8 f4 e ) d4.\p (e16 f ) | g8 ( a f d ) c4 ( \acciaccatura e8 d c )  |  c2 \bar "||" \break
    
\partial 2 
\mark "Variación I" 
%21
e,16-. _\markup { \italic "sempre piano" } g-. c-. e-. g-.\3-1 c-. b-. a-. | 
\addStaccato { g c e c b g,\3-0 b' c } cis (d f b, ) d (c e g,) 
| g ( f a f ) dis\4 (e) b\5 (c) r16 c' (g' f) b,-. f' ( dis e) | \break
%23
r16 a,\3-2 ( e' d) g,-. (d' b c ) r16 f,\4-4 ( c' b d c e c ) |
 b d fis g g,,\3-0 a f g e16-. ^\markup { \italic "simile" } g-. c-. e-. g-. c-. b-. a-. | 
* 
%26
g ( f a f ) dis (e) b (c) r16 c' (g' f) b,-. f' (dis e) | 
r16 a, ( e' d) g,-. d' (b c ) r16 f, ( c' b d c e c ) | 
b d fis g g,4\3 g,16-0 ( b g' b, ) g ( c g' c, ) | \break
%29
 \addStaccato { g b d\4-2 fis g b d\1 g } d b g b c ^\markup { "1/2 C.VIII" } g e c | 
g-0 b-0 d\4-2 fis g b d\1 g e,\4-3 g c e g,,-0 d''\2-4 b g, | 
a\5-4 c e a c e c a d,,\4-0 fis-1 a c fis a c c, | \break
%32
b\2-0 g' d b g a f g e g c e g\2-2 c\1-3 e,,\5-1 c'\4-4 | 
f, c' a' c, e, c' g' c, f,\5-2 a c\4-2 f a c e,, c' | 
d,\4-0 f\5-3 g-0 b-0 c e g c f,,\p g b d\4-3 f b c d | \break
%35
e,\3-2 c' f, c' g,\3-0 c' fis,,\5-3 a' g,\3-0 c\3-1 e g g, f' b f |
  e\1-0 c' ^\markup { "C.VIII" } g e c g e\5-1 g-4 \tuplet 6/4 { c, e g-3 c e g } c16 e, e, c' |
   f, c' a' c, e, c' g' c, f, a c f a c e,, c' | \break
%38
d, f g b c e g c f,,\p g b d f b c d |
 e, c' f, c' a, c' fis,, a' g, c e g g, f' b f |
 e c' g e c8 r8 \bar "||" \break

%41
\partial 2 
\mark "Var. II"
r8 g'\2-1 [ (e b) ] | 
c8 c'4 (b8) r8 a4 g8~ |
g f4 ( e8) r8 fis4\3-1 ( g8) |
a b4 (c8) g'  f4 e8~ |
e d c16 (b a g ) r8 g ^\markup { \italic "simile" } [ (e b) ] | \break
%45
c8 c'4 (b8) r8 a4 g8~ |
g f4 ( e8) r8 fis4 (g8 ) |
 a b4 (c8) g'  f4 e8~ | 
 e d c16 (b a g ) r8 g4 (fis8 ) | \break
%49
g [(b d b)] g a4 g8~ |
g [ f (e d) ] cis16\3-1 (d e d) f-4 (e a g) |
fis ( g a g ) c\1-3 (b d c) e4 d16-1 (c b c) |
c4 (b) \acciaccatura b8 a16 (gis a c) fis,8 g~ |
\break
%53
g8 f!4\3-2  (e8) \acciaccatura g8 f16 (e f a) dis,8 e~ |
e d!4\3-1 (c8)\4-3 a'16 ( gis a gis a8 g16 f ) |
e8 [(d f a) ] c,4 (b) |
c4 r4 \acciaccatura b'8 a16 ^\markup { \italic "simile" } (gis a c) fis,8 g~ |
\break
%57
g8 f4 (e8) \acciaccatura g8 f16 (e f a) dis,8 e~ |
e d!4 (c8) a'16 ( gis a gis a8 g16 f ) |
e8[ (d f a) ] c,4 (b) |
c4 r4 \bar "||"
\break

%61
\partial 2 
\mark "Var. III"
r8 a8 [ ( e fis) ] |  g8 c4 b8 a d4 c8 |
f,4 (e) cis'8 [ ( d b c )] |
a [(b gis a) ] f8 fis4 d8 | \break
%64 
g2 r2 |
r8 c'4\2-2 b8 r8 d4 c8 |
b8 a'4 g f e8~ |
e d4 c8 ( c16 )( b  c b ) c8-4 <c,\4-1 fis\3-2 > | \break
%68
<b g'>2 r2 |  R1*3  |
\break
%72 
 r2 e8 [ ( f fis g~ ) ] |
 g f!4 e8 f [ (e ees d) ] |
 c-. [ c (b bes) ] a [ (c b d) ] |
 c [ (e f a) ] c,4 (b) | \break
 %76
 c r4 e8 [ ( f fis g~ ) ] |
 g f4 e8 f [ (e ees d) ] |
 c-. [ c (b bes) ] a [ (c b d) ] |
 c [ (e f a) ] c,4 (b) |
 c r4 \bar "||" \break

%81
\partial 2 
\mark "Var. IV"
c4. ( d8  |   e4 d f e )    |   
d8 (b c4) a' (g   |   
f e) \after 8 \turn d4  (e8 c)   |
  g'2 c,4. ( d8  |
     e4 d f e )  | \break 
 %86
 d8 (b c4) a' (g    |
    f e) \after 8 \turn d4  (e8 c)  |
      g'2 d4 ( e  |
        d8 b g4 ) f' ( e  |
         d8 b g4 ) g' ( f  |  \break
%91
e4. ) e8 fis4 fis8 ( g )  |
  g2 c4. ( b8  |
    \appoggiatura b a4 g ) a4. ( g8 |
      \appoggiatura g8 f4 e ) d4. (e16 f ) | \break
 %95
 g8 [ ( a f d ) ] c4 ( \acciaccatura e8 d c )  |
   c (d16 e f g a b ) c4. (b8 |
     \appoggiatura b a4 g ) a4. ( g8  |
     \appoggiatura g8 f4 e ) d4. (e16 f ) | \break
%99
g8 [ ( a f d ) ] c4 ( \acciaccatura e8 d8. c16 )  |
  c2 (c4.) bes8\pp ( |
    a2 ) g ( |
     g8) f4 e d8-. [ (d-. d-.) ] |
     d1\fermata \espressivo |
      e1\pp \fermata \bar "|."
   }
  }
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
 <a c>8. <b d>16 <c e>4 <c f>4. ( <c e>8 ) |
 <g b d-.>4 ( <g c e-.> ) b4. ( c16 d ) |
 \break
 %15
 <c, c'>4 (a'8 <f d'>) <e c'>4 (  \acciaccatura g8 <f b>4 ) |
 <e c'>2 c'4. c8 |
 <a c>8. <b d>16 <c e>4 <c f>4. ( <c e>8 ) |
 <g b d-.>4 ( <g c e-.> ) b4. ( c16 d ) |
 <c, c'>4 (a'8 <f d'>) <e c'>4 (  \acciaccatura g8 <f b>4 ) |
 <e c'>2 \bar "||"
 \break

%variación 1
%21
  \partial 2 c'4.\p\3 ( d8  | 
  e4 d f e )   |   
  d8 (b c4) a' (g   |   
  f e)   \after 8 \turn d4  (e8 c)    | 
  << {g'2}\\{r4 g,16 a f g}>> c4. ( d8  | 
    e4 d f e )  |   
    \break
    %26
    d8 (b c4) a' (g   |   
    f e) \after 8 \turn d4  (e8 c)   |  
    g'2 g,16-0 ( b g' b, ) g ( c g' c, ) | 
  g16 b d\4-2 fis g b d\1 g d b g b c^\markup { "1/2 C.VIII" } g e c | 
  \break
  %30
g-0 b-0 d\4-2 fis g b d\1 g e,\4-3 g c e g,,-0 d''\2-4 b g, | 
a\5-4 c e a c e c a d,,\4-0 fis-1 a c fis a c c, | 
b\2-0 g' d b g a f g c'4.\fz-4 ( b8  |  
\break
%33
\appoggiatura b a4 g\2-4 ) a4.\fz ( g8 | 
\appoggiatura g8 f4 e ) d4.\p\2-1 (e16 f ) |
    g8 ( a f d ) c4 ( \acciaccatura e8 d c )  |  
    c2 c'4.\fz ( b8  |
    \break
    %37
    \appoggiatura b a4 g ) a4.\fz ( g8  | 
     \appoggiatura g8 f4 e ) d4.\p (e16 f ) | 
     g8 ( a f d ) c4 ( \acciaccatura e8 d c )  |  
     c2 \bar "||" \break

%Variación 2
%41
\partial 2
\mark "Var. II"
e,4. (f8 | g4 f) b( c | b8 d4 c8 ) c4 (b | a g ) b (c | b) r4  e,4. (f8 |   \break
%45
g4 f) b( c | b8 d4 c8 ) c4 (b | a g ) b (c | b) r4 b (c) |  \break
%49
b2 b4 (c) | b2 <d, ( b'>4 <d ) g> | <c g'>2 c'4. (e8) | e4 (d) e4 ( d |   \break

%53
c b ) c4. (b8 | a4 g ) f'16 (e f e f8 e16 d) | c4 ( a8 f) e4 (f) | e4 r4  e'4 (d |
\break

%57
c b) c4. (b8 | a4 g ) f'16 (e f e f8 e16 d) | c4 ( a8 f) e4 (f) | e4 r4 \bar "||" \break


%Variación 3
%61
\partial 2 c'4.\p\3 ( d8  | 
  e4 d f e )   |   d8 (b c4) a' (g   |   f e)   \after 8 \turn d4  (e8 c)    |  
  \break
  %64
  g'2 c,4. ( d8  | 
    e4 d f e )  |   
    d8 (b c4) a' (g   |   
    f e)   d4  (e8 c)   |  
    \break
    %68
    g2
  d'4-3 ( e  |  
    d8 b g4 ) f' ( e  |  
    d8 b g4 ) g' ( f  |  
    e4. ) e8 fis4 fis8 ( g )  |  
    \break
    %72
    g2\fermata c4.\fz-4 ( b8  |  
    \appoggiatura b a4 g\2-4 ) a4.\fz ( g8 |  
    \appoggiatura g8 f4 e ) d4.\p\2-1 (e16 f ) | 
    g8 ( a f d ) c4 ( \acciaccatura e8 d c )  |  
    %76
    c2 c'4.\fz ( b8  |  \appoggiatura b a4 g ) a4.\fz ( g8  |  \appoggiatura g8 f4 e ) d4.\p (e16 f ) | g8 ( a f d ) c4 ( \acciaccatura e8 d c )  |  c2 \bar "||" \break


 %Variación 4
 \mark "Var. IV"
%81
\partial 2
e,4 (fis |   g2) d'4 (c)   |  
   gis (a) c8. (d16) e4    |    a,8. (b16 c2) c4   |   b2 e4 (fis    |   g2) d4 (c) | \break

%86
gis' (a) c,8. (d16 e4)   |   a8. (b16 c2) c4   |   b2 b4 (c   |   b) r4 a8 (b c) c-.   |   b4 r4 r8 e4 d8 ( |  \break

%91
d) g, (c b a c b a )   |   b2 c,8 ( d e ) g~   |   g f4 e8 a, ( b c cis )   |   d4 ( c!2 ) b8 (c16 d)   |   
\break

%95
c4 a8 (d) c4 (b)   |   c r4 e8 (f dis e)   |   cis (d! b c) c4. (bes8)   |   a (b c b) a4 g~ |
\break

%99
g8 e' ( f a e4) \acciaccatura g8 f4   |    e4. f8 g (fis g) g   |    g4\pp (f!2 e8 d)   |   c2 (b8) b-. ( b-. b-. )   |   b1\fermata \espressivo    |    c\pp\fermata \bar "|."

}
\\
%VOCES GRAVES_____________________
%alzar
\relative c
{c4\p r4 |
%1
 r2 <b g' >4-. ( <c g' >-. ) |
 <<\new Voice { \shiftOn b8 ( d c4 ))}\\{g s4 r2 | }>> 
 <d' g,>4 ( <e c> <a f,> <c, fis,> ) | 
 <b g>2 c4 r4 | 
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
 f4 c f, c' | 
 g c <f, g'>2 |
 %15
 a4 ( f g) g | c2 << {<c g'>2 }\\{e4. e8 | }>>
 f4 c f, c' | 
 g c <f, g'>2 |
 a4 ( f g) g | c2 

%Variación 1
\mark "Variación I"
 %21
 \partial 2 s2 | s1*19 | s2 \bar "||"

 %41
\partial 2 
\mark "Var. II"
c4.  d8  | 
  e4 d  << { f e    |   
  d8 (b c4) } \\ {g2~ |g4 }>> a' (g   |   
  f e) << {\after 8 \turn d4  (e8 c)  |  
  g'2 } \\ {g,2~| g4} >> c4. ( d8  | 
  %45 
  e4 d f e )   |   
  d8 (b c4) a' (g   |   
  f e) \after 8 \turn d4  (e8 c)  |  
  g'2 d4 ( e  | 
  %49
d8 b g4 ) f' ( e  | 
d8 b g4 ) g' ( f  | 
e4. ) e8 fis4 fis8 ( g )  |  
g2 c4. ( b8  | 
%53
\appoggiatura b a4 g ) a4. ( g8 |  
\appoggiatura g8 f4 e ) d4. (e16 f ) | 
g8 [ ( a f d ) ] c4 ( \acciaccatura e8 d c )  |  
c (d16 e f g a b ) c4. (b8 | 
%57
 \appoggiatura b a4 g ) a4. ( g8     |     
 \appoggiatura g8 f4 e ) d4. (e16 f )    |     
 g8 [ ( a f d ) ] c4 ( \acciaccatura e8 d8. c16 )     |   c4 c \bar "||"  \break

%Variación 3
%61
 \mark "Var. III"
 r2 | r1 | b'8 a'4 g f e8~ | e8 d4 c c c8 |
\break

%64
b2 r8 a8 (e fis) | g1 ~ | g8 f'4 e16 (d) cis8 (d b c) | a (b gis a) f8 fis4 d8 |
\break

%68
g2 r8 g8 (\acciaccatura f8 e d16 c)   |   g4 r16 g (b d) g8 (gis a fis)  |   g!4. f4 e d8~   |   d8 g, c b a aes aes aes    | 
%72
g4 g r2    |   r2 d'8 (cis c b)   |   a (a' gis g!) fis4 f   |   e8 (cis d f,) g2  |
%76
c4 r4 r2    |   r2 d8 (cis c b)   |   a (a' gis g) fis4 f   |   e8 (cis d f,) g2   |   c4 c \bar "||" 

%81
 \partial 2
 a2(  |   g2 gis4 a)  |   e (a) f (c'   |   d c) f (fis)   |   g g, a'2(   |   g gis4 a)   | \break
 %86
 e (a) f (c'   |   d c) f, (fis)   |   g1~   |   g1~   |   g1~   | \break 
 %91
 g1~   |   g4 a16 (b c d) e8 ( d c) c   |   c2 f,4 (e   |   d) a'8 (g fis4 f)   |\break
 %95
 e (f g) g,    |   c r4 r2   |   r2 dis8 (e f cis)   |   d (gis, a g) fis (d' f, g)   | \break
 %96
 e8 (cis' d f,) g2   |   c1~   |   c1~   |   c2~c8 <c c'>8-. q-. q-.  |   q1\espressivo \fermata   |   q1\pp \fermata \bar "|."   | \break

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
<<
\guitarrauno
\metalofono
>>
  \layout {}
  \midi {}
}