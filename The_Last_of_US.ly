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
  \grace e'' \glissando b'8 g e
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
  \grace e'' \glissando b'8 g\2 e\1
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
     }

       >>
>>
\midi {}
\layout {}
}