\header {
title = "The Last of Us"
subtitle = "Tema Principal"
composer = "Gustavo Santaolalla"
}

\score {
<<
     <<
\relative c' {
\clef "treble_8"
\time 12/8

%1-2
g'8 b, e  g b, e g b, e g b, e |
<g b> b, e <g b> b, e <g b> b, e <g b> b, e |
%3-10
g b, e e b e a b, e fis b, e |
g b, e g b, e g b, e g b, e |
g b, e e b e a b, e fis b, e |
b' b, e b' b, e b' b, e b' b, e |
g b, e e b e a b, e fis b, e |
g b, e g b, e g b, e g b, e |
bes' b, e a b, e \acciaccatura {  g16 a } g8 b, e e b e |
e b e e b e e b e e b e |
%11-12
e e, b' e b e, e,4 <e b' e b'>8 q q q | q q q q q q q8 r4 \once \hideNotes
  \grace f''8 \glissando b8 g e |
%13-16
d' b, e d' b, e d' <e,,, e' b' e b d'> q q q q |
cis''' b, e cis' b, e cis' <a,, a' b e cis' > q q q q |
c'' b, e c' b, e c' <a,, a' b e c' > q q q q |
b'' b, e b' b, e b' <e,,, e' b' e b b'> q \grace f''8 \glissando b8 g e |
%17-20
<e,, e' b' e b d'> q q q q q q q q q q q |
<a a' b e cis' > q q q q q q q q q q q |
<a a' b e c' > q q q q q q q q q q q |
<e e' b' e b b'> q q q q q q q q q q q |
   }
\\
\relative e, {
%1-2
e1.~ | e1. |
%3-10
e1.~ | e1. |
e1.~ | e1. |
e1.~ | e1. |
e1.~ | e1. |
%11-12
e2.  s2. | s1. |
%13-20
e1. | a1.  | a1.  | e1.  | 
}
>>

\new TabStaff <<

\relative c' {
\clef "treble_8"
\time 12/8

%1-2
g'8\3 b, e  g\3 b, e g\3 b, e g\3 b, e |
<g\4 b\3> b, e  <g\4 b\3> b, e  <g\4 b\3> b, e  <g\4 b\3> b, e |
%3-6
g\3 b, e e\3 b e a\3 b, e fis\3 b, e |
g\3 b, e g\3 b, e g\3 b, e g\3 b, e |
g\3 b, e e\3 b e a\3 b, e fis\3 b, e |
b'\3 b, e b'\3 b, e b'\3 b, e b'\3 b, e |
%7-10
g\3 b, e e\3 b e a\3 b, e fis\3 b, e |
g\3 b, e g\3 b, e g\3 b, e g\3 b, e |
bes'\3 b, e a\3 b, e \acciaccatura {  g16\3 a\3 } g8\3 b, e e\3 b e |
e\3 b e e\3 b e e\3 b e e\3 b e |
%11-12
e e, b'\3 e\2 b\3 e, e,4 \repeat unfold 4 {<e b' e b'\3>8}  | \repeat unfold 7 {<e b' e b'\3>8} r4 \once \hideNotes
  \grace e'' \glissando b'8 g\2 e\1 |
%13-16
d' b,\2 e\3 d' b,\2 e\3 d' <e,,, e' b' e b d'> q q q q |
cis''' b,\2 e\3 cis' b,\2 e\3 cis' \repeat unfold 5 { <a,, a'\4 e'\3 b\2  cis' > } |
c'' b,\2 e\3 c' b,\2 e\3 c' <a,, a'\4 b\2 e\3 c' > q q q q |
b'' b,\2 e\3 b' b,\2 e\3 b' \repeat unfold 2 {  <e,,, e'\5 b'\4 e\3 b\2 b'> }   b'''8 g\2 e |
%17-20
<e,, e' b' e b d'> q q q q q q q q q q q |
\repeat unfold 12 { <a a'\4 e'\3 b\2  c' > } |
\repeat unfold 12 { <a a'\4 e'\3 b\2  c' > } |
\repeat unfold 12 { <e e' b'\4 e\3 b\2 b'> } |

   }
\\
\relative e, {
%1-2
e1.~ | e1. |
%3-10
e1.~ | e1. |
e1.~ | e1. |
e1.~ | e1. |
e1.~ | e1. |
%11-12
e2.  s2. | s1. |
%13-20
e1. | a1.  | a1.  | e1.  |
     }

       >>
>>
\midi {}
\layout {}
}