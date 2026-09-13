\version "2.26.0"

\header {
  title = "Spain"
  composer = "Chick Corea"
}

\score {
  \relative c'' {
  \tempo 4=120
  \clef "treble_8"
  \key b \minor
  %primer solo primer periodo
    r1 | cis16 e (cis) a e\1 g b g( e) b g'(e) b fis'(e) b | d8. cis16 d e fis (e) g (fis) g a (g) a bes bes | bes (a) g fis e d cis8~cis2 |
    \tuplet 6/4 { e,,16 fis g a b cis } \tuplet 6/4 { d e fis g a b\3 } \tuplet 6/4 { cis d e fis\2 g a } b32 cis d16 cis32 b a16 | g32 fis e16 \tuplet 3/2 { d cis b } \tuplet 6/4 { cis d e fis g a } b8. cis16 d (cis) d e~ | e4.. a,16 fis'8 fis16 fis8 g g16 | g (fis8) d16~d4 r16 \acciaccatura e8 d cis16 d8-. r8 |
    \tuplet 5/4 { cis16 b a aes g } \tuplet 5/4 { fis f\3 e ees d } \tuplet 5/4 {bes' g ges\3 f e } \tuplet 5/4 { ees d des c b } | \tuplet 5/4 { g'\2 e ees d c } \tuplet 5/4 { b bes a aes g } e'4 fis16 g gis a | b d b a fis e fis a c ees c bes g f g bes | b d b a fis8 e ees d cis c~ |
  %segundo periodo 
    c2 \tuplet 6/4 { fis'16 e d fis e d } \tuplet 6/4 { e d cis e d cis } |
     \tuplet 6/4 { d cis b d cis b } \tuplet 6/4 { cis b a g fis e } \tuplet 6/4 { d cis b a g fis } \tuplet 6/4 { e d cis b a g } | 
     fis4~fis16 fis32 (g) a (g) fis (e) fis16 (g) a b cis d e (d) | 
     fis (e) d cis b (a) g fis~fis8. <fis cis' e a cis fis>16 q8-. r8 | 
     %
     e16 (g) b d fis (e) d cis d e fis g a (g) fis g |
     a b cis d e fis g gis a ais b bis cis8 cis16 cis |
     cis8-. a16 a8 fis fis cis cis \acciaccatura b'\glissando cis8 cis16 |
     cis16 r16 a16 a16 (a16) fis8 b,16 r16 cis (b) ais b cis d e |
     %
     f f (e) g r16 f r16 e \tuplet 6/4 { f (e) d e d (cis) } \tuplet 6/4 { d (cis b) cis (b) ais } |
     \tuplet 6/4 {b ais (g) ais (g) fis} \tuplet 6/4 {g fis (e) } fis8 r16 a' a a a (g) fis e |
     d (cis) b ais b cis  d (cis) b ais b cis d (cis) b8 |
     \tuplet 6/4 {dis16 cis b dis cis b} \tuplet 6/4 {e dis b e dis b} \tuplet 6/4 {fis' e b gis' fis b,} a'4 |
     


  
  }

  \layout {}
  \midi {}
}