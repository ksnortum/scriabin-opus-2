%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Posistions and shapes %%%

forceHShiftA = \once \override NoteColumn.force-hshift = 0.25 

%%% Music %%%

global = {
  \time 3/4
  \key c \major
  \accidentalStyle piano
}

rightHandUpper = \relative { 
  g'4 a4. b8 |
  \voiceOne b8 c d c b' a |
  g8. a,16 \oneVoice b4 e |
  d4~\prall d8 c b a |
  g4 a4. b8 |
  \voiceOne b8 c d c b' a |
  g8. a,16 \oneVoice b4 e |
  c2. |
  
  \barNumberCheck 9
  e4 a4.-> g8 |
  \tuplet 3/2 { f8 g f } e d c b |
  a4. a8\noBeam gs a |
  b8 e, b'4 c8 d |
  e4 a4.-> g8 |
  \tuplet 3/2 { f8 g f } e d c b |
  a8[ b] b8.[\prall a16] b8. c16 |
  a2 af4 |
  
  \barNumberCheck 17
  g4 a4. b8 |
  \voiceOne b8 c d c b' a |
  g8. a,16 \oneVoice b4 e |
  d4~\prall d8 c b a |
  g4 a4. b8 |
  \voiceOne b8 c d c b' a |
  g8. a,16 \oneVoice b4 e |
  c2. |
  
  \barNumberCheck 25
  % SrcB ties the c16 to the C in chord <c e>4 in this measure, but no ties are
  % present for any identical figurations in later measures. SrcA does not have
  % the tie. At faster tempos, this tie could certainly facilitate performance.
  % It would be interesting to consult the autograph manuscript for clues about
  % the composer's intention.
  \voiceOne c8. \acciaccatura { \slurDown d8 } c16 <c e>4 \slurUp q~ |
  <c f>4 c2-> |
  <bf e>4 bf2-> |
  <a d>4 a2-> |
  c8. \acciaccatura { \slurDown d8 } c16 <c e>4 \slurUp q~ |
  <c f>4 c2-> |
  \oneVoice  <g b e>4 \voiceOne b2-> |
  d4 c2 |
  
  \barNumberCheck 33
  c8. \acciaccatura { \slurDown d8 } c16 <c e>4 \slurUp q~ |
  <c f>4 c2-> |
  <bf e>4 bf2-> |
  <a d>4 a2-> |
  c8. \acciaccatura { \slurDown d8 } c16 <c e>4 \slurUp q~ |
  <c f>4 c2-> |
  d4 g,2 |
  f4 \oneVoice r r |
  
  \barNumberCheck 41
  g4 a4. b8 |
  \voiceOne b8 c d c b' a |
  g8. a,16 \oneVoice b4 e |
  d4~\prall d8 c b a |
  g4 a4. b8 |
  \voiceOne b8 c d c b' a |
  g8. a,16 \oneVoice b4 e |
  c2. |
  
  \barNumberCheck 49
  e4 a4. g8 |
  f4\prall e8 d c b |
  a4. a8\noBeam\prall gs a |
  b8 e, b'4 c8 d |
  e4 a4. g8 |
  f4\prall e8 d c b |
  \voiceOne a4 s b8 c |
  \oneVoice a2 af4 |
  
  \barNumberCheck 57
  g4 a4. b8 |
  \voiceOne b8 c d c b' a |
  g8. a,16 \oneVoice b4 e |
  d4~\prall d8 c b a |
  g4 a4. b8 |
  \voiceOne b8 cs d cs bf' a |
  \oneVoice a,4 b4. cs8 |
  \voiceOne cs8[ d e d d'8.\fermata c16] |
  
  \barNumberCheck 65
  b8 c, d4. a'8 |
  \oneVoice g8 g, a4. f'8 |
  \voiceOne e8 c, gs' a e' d |
  \oneVoice <c, g' c>4 r r |
  \bar "|."
}

rightHandLower = \relative {
  \voiceTwo
  s2. |
  s4. \hideNoteHead c''8~ c4~ |
  c4 s2 |
  s2. * 2 |
  s4. \hideNoteHead c8~ c4~ |
  c4 s2 |
  s2. |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. |
  s4. \hideNoteHead c8~ c4~ |
  c4 s2 |
  s2. * 2 |
  s4. \hideNoteHead c8~ c4~ |
  c4 s2 |
  s2. |
  
  \barNumberCheck 25
  r4 bf bf~ |
  bf4 a8. bf16 a4~ |
  a4 g8. a16 g4~ |
  g4 f8. g16 f4 |
  r4 bf bf~ |
  bf4 a8. bf16 a4 |
  s4 f8. g16 f4 |
  r4 e8. f16 g4 |
  
  \barNumberCheck 33
  r4 bf bf~ |
  bf4 a8. bf16 a4~ |
  a4 g8. a16 g4~ |
  g4 f8. g16 f4 |
  r4 bf bf~ |
  bf4 a8. bf16 a4 |
  r4 c,8. d16 e4 |
  f4 s2 |
  
  \barNumberCheck 41
  s2. |
  s4. \hideNoteHead c'8~ c4~ |
  c4 s2 |
  s2. * 2 |
  s4. \hideNoteHead c8~ c4~ |
  c4 s2 |
  s2. |
  
  \barNumberCheck 49
  s2. * 6
  a8[ b] b a gs4 |
  s2. |
  
  \barNumberCheck 57
  s2. |
  s4. \hideNoteHead c8~ c4~ |
  c4 s2 |
  s2. * 2 |
  s4. \hideNoteHead cs8~ cs4 |
  s2. |
  s4. \hideNoteHead d8~ d4 |
  
  \barNumberCheck 65
  r4 c2 |
  s2. |
  r4 f, <b, g'> |
  s2. |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \voiceThree 
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 3 |
  s4 a' gs |
  s2. * 2 |
  r4 <gs, d'>2 |
  s2. |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. |
  s4 f'2 |
  s4 e8. f16 e4 |
  s4 d8. e16 d4 |
  s2. |
  s4 f2 |
  s4 d8. e16 d4 |
  s4 c2 |
  
  \barNumberCheck 33
  s2. |
  s4 f2 |
  s4 e8. f16 e4 |
  s4 d8. e16 d4 |
  s2. |
  s4 f2 |
  s4 \forceHShiftA e,8. f16 g4 |
  a4 s2 |
  
  \barNumberCheck 41
  \clef treble g'2.~ |
  g2. |
  g2 f4 |
  \oneVoice r4 \voiceThree e2~ |
  e4 e d |
  s2. * 3 |
  
  \barNumberCheck 49
  s2. * 3 |
  s4 a' gs |
  s2. * 2 |
  r4 <gs, d'>2 |
  s2. |
  
  \barNumberCheck 57
  s4 <g d'>2 |
}

leftHandLower = \relative {
  r4 <g f'> q |
  r4 <g e'> q |
  g,4 <g' f'> q |
  c,4 <g' e'> r |
  r4 <g f'> q |
  r4 <g e'> q |
  g,4 <g' f'> q |
  c,4 <g' e'> c,, |
  
  \barNumberCheck 9
  \clef treble a''4 <e' c'> <c a'> |
  d,4 <a' b f' a> r |
  ds,4 <a' c f> <c f> |
  e,4 \voiceFour d'2 |
  \oneVoice a4 <c a'> a |
  d,4 <a' b f' a> \clef bass d,
  \voiceFour e4 f e |
  \oneVoice a,4 <e' c'> <d c' f> |
  
  \barNumberCheck 17
  r4 <g f'> q |
  r4 <g e'> q |
  g,4 <g' f'> q |
  c,4 <g' e'> r |
  r4 <g f'> q |
  r4 <g e'> q |
  g,4 <g' f'> q |
  c,4 <g' e'> c,, |
  
  \barNumberCheck 25
  r4 <c'' a'> <c g'>~ |
  <f, c' g'>4 \voiceFour c'8. d16 c4 |
  \oneVoice c, \voiceFour g'2 |
  f4 a2 |
  \oneVoice r4 <c a'> <c g'> |
  f,4 \voiceFour c'8. d16 c4 |
  \oneVoice c,4 \voiceFour g'2 |
  \oneVoice c,4 \voiceFour g'8. a16 bf4 |
  
  \barNumberCheck 33
  \oneVoice r4 <c a'> <c g'>~ |
  <f, c' g'>4 \voiceFour c'8. d16 c4 |
  \oneVoice c, \voiceFour g'2 |
  f4 a2 |
  \oneVoice r4 <c a'> <c g'>~ |
  <f, c' g'>4 \voiceFour c'8. d16 c4 |
  \oneVoice bf,4 \voiceFour <c bf'>2 |
  f4 \oneVoice f, r |
  
  \barNumberCheck 41
  \voiceFour \clef treble r4 fs'' f |
  r4 e ef~ |
  ef4 d g, |
  s4 g fs |
  r4 <f b> q |
  \oneVoice r4 \clef bass <e c' g'> <ef c' fs> |
  <d c' f>4 g, <g'_~ b e> |
  <g c e>4 g, c, |
  
  \barNumberCheck 49
  <c'' a'>8 e,~ <a, e' c'>4 <a' a'>~ |
  <a b f' a>4 d, <a' b f'> |
  <a c f>4 ds, <c' f> |
  e,4 d'2 |
  <c a'>8 e,~ <a, e' c'>4 <a' a'>~ |
  <a b f' a>4 d, <a' b f'> |
  \voiceFour e4 f e |
  \oneVoice a,4 <e' c'> <d c' f> |
  
  \barNumberCheck 57
  \voiceFour <g g'>4 <fs fs'> <f f'> |
  \oneVoice r4 <e c' g'> <ef c' fs> |
  <d c' f>4 <g b f'> g, |
  <e' c' g'>4 <g, g'> <fs fs'> |
  <f f'>4 <g' d' g> <f, f'> |
  <e e'>4 <a' cs g'> <cs g'> |
  <g, g'>4 <a' e' a> <g, g'> |
  <f f'>4 <a' d a'> <d a'>4\fermata |
  
  \barNumberCheck 65
  <fs,, fs'>4 <d' c' a'> r |
  <g, g'>4 <d' c' f> r |
  <g,, g'> <g' d'> <g f'> |
  <g e'>4 c, r |
}

leftHand = {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  s2.\p |
  s2\< s4\! |
  s2. * 6 |
  
  \barNumberCheck 9
  s2. * 3 |
  % SrcB
  s4 s2-\tweak to-barline ##f \< |
  s4\! s2 |
  s2. * 3 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2.\p |
  s2\< s4\! |
}

% MIDI only 
pedal = {
  
}

tempi = {
  \set Score.tempoHideNote = ##t
  \tempo 4 = 120
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 7 |
  s2 \tempo 4 = 60 s4 |
  \tempo 4 = 120 s2. |
  s2. * 3 |
}

forceBreaks = {
  s2. * 6 s2. \break
  s2. * 6 s2. \break
  s2. * 6 s2. \break
  s2. * 6 s2. \break
  s2. * 6 s2. \pageBreak
  
  s2. * 6 s2. \break
  s2. * 6 s2. \break
  s2. * 5 s2. \break
  s2. * 6 s2. \break
}

impromptuThreeNotes =
\score {
  \header {
    title = "Impromptu à la Mazur"
    composer = "Alexander Scriabin"
    opus = "Opus 2, No. 3"
  }
  \keepWithTag layout  
  \new PianoStaff \with { 
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 10)
         (padding . 2))
  } <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

impromptuThreeMidi =
\book {
  \bookOutputName "impromptu-op2-no3"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi{}
  }
}
