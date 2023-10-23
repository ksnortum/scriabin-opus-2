%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

global = {
  \time 3/4
  \key b \major
  \accidentalStyle piano
}

rightHandUpper = \relative { 
  R2. |
  \voiceOne \tuplet 3/2 { r8 ds''(\p gs, } \tupletOff 
    \tuplet 3/2 { as cs b  b, as' gs } |
  fs4) \oneVoice r <fs b fs'> |
  \tuplet 3/2 { r8 gs'( fs  gs, e' e,  \voiceOne ds'4 cs8 } |
  b4) \oneVoice r r |
  \tuplet 3/2 { r8 as'( ds,  es gs fs  \voiceOne fs, es' ds } |
  cs4) \oneVoice r <cs fs cs'> |
  \tuplet 3/2 { r8 ds'( cs ds, b' b,  \voiceOne as'4 gs8~ } |
  
  \barNumberCheck 9
  gs4 \oneVoice <as, fs'>4. <gs e'>8) |
  \tuplet 3/2 { r8 \voiceOne ds'( fs,  cs' ds b cs ds gs } |
  \oneVoice fs4 \tuplet 3/2 { e8 ds cs } b4) |
  \tuplet 3/2 { r8 \voiceOne b( as  b ds e  fs gs b } |
  e4)^\pp \oneVoice r r |
  \tuplet 3/2 { r8 ds,(\ppp gs,  as cs b  \voiceOne b, as' gs } |
  fs4) \oneVoice r <fs b fs'> |
  \tuplet 3/2 { r8 gs' fs  gs, e' e, } ds''8.\fermata <e, cs'>16( |
  <ds b'>4) r r |
  \bar "|."
}

rightHandLower = \relative {
  \voiceTwo
  s2. |
  s2 b4~ |
  b4 s2 |
  s4 \tupletOff \tuplet 3/2 { s4 \hideNoteHead e8~ } e4 |
  ds4 s2 |
  s2 fs4~ |
  fs4 s2 |
  s4 \tuplet 3/2 { s4 \hideNoteHead \voiceOne b8~ } \voiceTwo b4 |
  
  \barNumberCheck 9
  as4 s2 |
  \tuplet 3/2 { s4 \hideNoteHead fs8~ } fs4 a |
  s2. |
  s4 b~ 
    <<
      { b~ | <b b'>4 }
      \new Voice { 
        \voiceTwo \tupletOff \tuplet 3/2 { s4 \hideNoteHead b'8~ } | b4 
      }
    >> s2 |
  s2 b,,4~ |
  b4 s2 |
  s2. * 2 |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  r4 e'4.^\mf ds8 |
  \voiceThree ds2.~ |
  ds4 s2 |
  s2. |
  s4 \clef treble \oneVoice b'4.^\mf as8 |
  \voiceThree as2.~ |
  as4 s2 |
  s2. |
  
  \barNumberCheck 9
  s2. * 2 |
  \tupletOff \tuplet 3/2 { r8 ds,( fs,  cs' ds b  cs ds gs } |
  fs4 e2)~ |
  \hideNoteHead e4 \oneVoice e4.^\p ds8 |
  \voiceThree ds2.~ |
  ds4 s2 |
  s2. * 2 |
}

leftHandLower = \relative {
  \voiceFour 
  s2. |
  r4 es2 |
  fs4 \oneVoice fs, <ds' b'> |
  fs,4 <e' b'> <fs as>_~ |
  <b, fs' b>4 s2 
  \voiceFour r4 bs'2 |
  cs4 \clef bass \oneVoice cs, <as' fs'> |
  cs,4 <gs' fs'> <cs es>_~ |
  
  \barNumberCheck 9
  <fs, cs' fs>4 <fs cs'>2 |
  b,4 <a' ds a'> <fs b fs'>8\noBeam fs, |
  \voiceFour b,4 a''2 |
  gs2~ <b, gs'>4~ |
  <e, b' gs' e'>4 s2 |
  r4 es'2 |
  fs4 \oneVoice fs, <ds' b'> |
  fs,4 <cs' b'> \clef treble <ds' b'>8.\fermata <fs as>16( |
  <b, fs' b>4) r r |
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
  s2. * 8 |
  
  \barNumberCheck 9
  s2. |
  s2 s4\cresc |
  s2. |
  s4 s2\dim |
  s2.\! |
}

% MIDI only 
pedal = {
  s2. |
  s2.\sd |
  s2.\su\sd |
  s2\su\sd s4\su\sd |
  s2.\su |
  s2.\sd |
  s2.\su\sd |
  s2\su\sd s4\su\sd |
  
  \barNumberCheck 9
  s2.\su\sd |
  s2.\su\sd |
  s2. |
  s2.\su\sd |
  s2.\su |
  s2.\sd |
  s2.\su\sd |
  s2\su\sd s4\su |
  s2. |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \tempo 4 = 72
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 7 |
  \tempo 4 = 69 s4 \tempo 4 = 66 s \tempo 4 = 30 s8. \tempo 4 = 72 s16 |
  s2. |
}

forceBreaks = {
  s2. * 3 s2. \break
  s2. s2. s2. \break
  s2. s2. s2. \break
  s2. s2. s2. \break
}

preludeTwoNotes =
\score {
  \header {
    title = "Prelude"
    composer = "Alexander Scriabin"
    opus = "Opus 2, No. 2"
  }
  \keepWithTag layout  
  \new PianoStaff \with { 
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 12)
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

preludeTwoMidi =
\book {
  \bookOutputName "prelude-op2-no2"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi{}
  }
}
