%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

global = {
  \time 3/4
  \key cs \minor
  \accidentalStyle piano
}

rightHandUpper = \relative {
  \voiceOne 
  <e cs'>8 <e ds'> <cs' e> <cs fs> <e gs> <cs e cs'> |
  b'8. a16 a2 |
  <fs, cs' fs>8 <a gs'> <fs' a> <cs b'> <fs cs'> <fs cs' fs> |
  <e e'>8. <ds ds'>16 q2 |
  <e gs cs>8 <e ds'> <cs' e> fs <e gs> <cs gs' cs> |
  b'8. gs16 gs4 e |
  ds8. b16 b4 ds |
  b8. gs16 gs2 |
  
  \barNumberCheck 9
  <e, gs cs>8 <e ds'> <cs' e> <gs fs'> <e' gs> cs' |
  b8. as16 as2 |
  <b, ds gs>8 <b as'> <gs' b> <ds cs'> <b' ds> gs' |
  fs8. es16 es2 |
  \key bf \minor
  % In SrcA, the second chord of beat 2 is <f af>, but SrcB has <ef af>. Follow
  % SrcB to more closely align with similar right-hand figurations in other
  % measures, namely that the lower note of the chord is in unison with the
  % rightHandLower part, which sustains that note for a quarter note duration.
  <gf, bf ef>8 <gf f'> <ef' gf> <ef af> bf' <ef, bf' ef> |
  df'8. bf16 bf4 gf |
  f8. df16 df4 f |
  df8. bf16 bf8 r r4 |
  
  \barNumberCheck 17
  \key ef \major 
  \oneVoice <d, af' bf>8 <ef af c> \acciaccatura { d' } q <d, af' b> < ef af c>
    <ef af c f> |
  \voiceOne c'8. bf16 bf2 |
  bf8 c \acciaccatura { d } c b \tuplet 3/2 { c g' f } |
  f8. bf,16 bf2 |
  ef2 ef4 |
  eff4 df df |
  \oneVoice 
  <gf,, c f>8 <gf c ef> \acciaccatura { f' } <gf, c ef> <gf c d> q <gf c ef> |
  <gf c f>8 <gf c ef> \acciaccatura { f' } <gf, c ef> <gf c d> q <gf c ef> |
  
  \barNumberCheck 25
  \key cs \minor
  % In SrcA, the lowest notes of the first two eighth-note chords are G-sharps,
  % but in SrcB, they are F-sharps. Follow SrcB, since I think it more likely
  % aligns with the composer's intention, namely that the <gf c> from chords in
  % the previous two measures change to the enharmonic <fs bs> in this measure
  % for the key change.
  <fs bs e> <fs bs ds> \acciaccatura { e' } <fs, bs ds> <fs bs css> <fs bs ds>
    <fs bs e> |
  \voiceOne <e cs'>8 <e ds'> <cs' e> <cs fs> <e gs> <cs e cs'> |
  b'8. a16 a2 |
  <fs, cs' fs>8 <a gs'> <fs' a> <cs b'> <fs cs'> <fs cs' fs> |
  <e e'>8. <ds ds'>16 q2 |
  <e gs cs>8 <e ds'> <cs' e> fs <e gs> <cs gs' cs> |
  b'8. gs16 gs4 e |
  ds8. b 16 b4 ds |
  
  \barNumberCheck 33
  b8. gs16 gs8 r r4 |
  gs8 a \acciaccatura { \slurDown b } a gs a <a ds> |
  a8. gs16 gs2 |
  gs8 a \acciaccatura { b } a gs \tuplet 3/2 { a e' ds } |
  ds8. gs,16 gs2 |
  \oneVoice <cs, e gs>8 <cs e a> \acciaccatura { b' } <cs, e a> <cs e gs>
    <cs gs' cs> <fs, cs' fs> |
  <a cs e> <a cs fs> \acciaccatura { gs' } <a, cs fs> <a cs e> <a cs a'>
    <a cs ds> |
  <a bs ds> <a bs e> \acciaccatura { fs' } <a, bs e> <a bs ds> < gs cs gs'>
    <gs cs> |
  
  \barNumberCheck 41
  \voiceOne e'8. ds16 ds4 e |
  <e, gs cs>8 <e ds'> <cs' e> fs <e gs> <cs gs' cs> |
  b'8. a16 gs4 fs |
  e8. cs16 <gs cs>4 <\noAccidental fs cs' fs> |
  e'8 cs cs2_\fermata |
  \bar "|."
}

rightHandLower = \relative {
  \voiceTwo
  s8 e4 cs' s8 |
  <b cs fs>8 <b fs'> <a fs'> q q q |
  s8 cs4 cs s8 |
  a'8 a a a gs gs |
  s8 gs4 cs s8 |
  <b gs'>8 <gs b> q q <e gs> q |
  <ds gs>8 gs gs gs <e fss cs'> q |
  <b ds>8 q <fs bs> q q q |
  
  \barNumberCheck 9
  s8 gs4 cs s8 |
  <cs e gs>8 q q <cs fss> q q |
  s8 ds4 gs s8 |
  <gs b ds>8 q q <gs css> q q |
  % bf minor
  s8 bf4 ef s8 |
  <df bf'>8 <bf df> q q <gf bf> q |
  <f bf>8 bf bf bf <gf a ef'> q |
  <df f>8 q q f-.( f-. f-.) |
  
  \barNumberCheck 17
  % ef major
  s2. |
  <ef af>8 q <d af'> q q q |
  <d af'> <ef af> q q q <ef af c> |
  q8 q <d af'> q q q |
  <df bf'>8 <df c'> \acciaccatura { \slurUp df' } <df, c'> <df bf'> <df bff'>
    <c af'> |
  <cf af'> <cf bff'> \acciaccatura { \slurDown cf' } <cf, bff'> <cf af'> q
    <bf gf'> |
  s2. * 2 
  
  \barNumberCheck 25
  % cs minor
  s2. |
  s8 e,4 cs' s8 |
  <b cs fs> <b fs'> <a fs'> q q q |
  s8 cs4 cs s8 |
  a'8 a a a gs gs |
  s8 gs4 cs s8 |
  <b gs'> <gs b> q q <e gs> q |
  <ds gs>8 gs gs gs <e fss cs'> q |
  
  \barNumberCheck 33
  <b ds>8 q q\noBeam ds-.( ds-. ds-.) |
  <bs fs'>8 <cs fs> q q q q |
  q8 q <bs fs'> q q q |
  q8 <cs fs> q q q <cs fs a> |
  q8 <cs fs> <bs fs'> q q q |
  s2. * 3 |
  
  \barNumberCheck 41
  <a cs>8 q q q q q |
  s8 gs4 cs s8 |
  <cs e>2 cs4 |
  <gs cs>4 s2 |
  <e gs>2.\fermata |
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
  <cs, gs' gs'>8\arpeggio <gs' gs'> q q cs, <gs' gs'>
  s2. |
  <a a'>8 <gs gs'> <fs fs'> <e e'> <ds ds'> <ds' a' cs> |
  s2. |
  cs'8 b as\noBeam gs'4 e8 |
  e8 ds css ds ds gs, |
  as8 b e ds b as |
  <ds, gs>8 q css\noBeam e4 ds8 |
  
  \barNumberCheck 9
  <cs,! cs'>8 < b b'> <as as'>\noBeam as'4 cs'8 |
  b8. as16 \voices 3,4 << { as8 e'4 ds8 } \\ { as2 } >> |
  <gs, gs'>8 <fs fs'> <es es'>\noBeam es'4 gs'8 |
  fs8. es16 \voices 5,3 << { es8 b'4 as8 } \\ { es2 } >> |
  \key bf \minor
  ef8 df c\noBeam bf'4 gf8 |
  gf8 f e f f bf, |
  c8 df gf f df c |
  <f, bf>8 q q\noBeam f-.( f-. f-.) |
  
  \barNumberCheck 17
  \key ef \major
  \repeat unfold 4 { f8 f f f f f | } 
  g8 g g g gf gf |
  f8 f f f <df f> <df gf> |
  \oneVoice af8 af af af bff bff |
  af8 af af af bff bff |
  
  \barNumberCheck 25
  \key cs \minor
  \voiceThree a'2 gs4 |
  <cs,, gs' gs'>8\arpeggio <gs' gs'> q q cs, <gs' gs'>
  s2. |
  <a a'>8 <gs gs'> <fs fs'> <e e'> <ds ds'> <ds' a' cs> |
  <gs, fs' cs'>\arpeggio <fs' cs'> q q <gs, fs' bs> <fs' bs> |
  cs'16 gs cs b  as8. gs'16  gs8 fs16 e |
  e16 ds ds css  css ds ds e  ds gs, gs as |
  as16 b b e  e ds ds b  b as as gs |
  
  \barNumberCheck 33
  s2. |
  \repeat unfold 4 { ds8 ds ds ds ds ds | }
  \repeat unfold 3 { cs8 cs cs cs cs cs | }
  
  \barNumberCheck 41
  cs8 cs cs cs cs cs |
  s2 gs'4 |
  fss4 gs a |
  cs,8 cs cs cs cs cs |
  s2. |
}

leftHandLower = \relative {
  \voiceFour 
  s4. gs,4 s8 |
  <cs, fs cs' fs>8\arpeggio <cs' fs cs'> q q q q |
  cs8 cs4 a s8 |
  <gs fs' cs'>\arpeggio <fs' cs'> q q  <fs bs> q |
  cs2. |
  <ds gs>2 cs4 |
  b2 cs4 |
  gs4 << { gs2 } { s32 s16.\< s8\! s\> s\! } >> |
  
  \barNumberCheck 9
  s2. |
  ds'8 ds ds\noBeam ds4 ds8 |
  s2. |
  as'8 as as\noBeam as4 as8 |
  % bf minor
  ef2. |
  <f bf>2 ef4 |
  df2 ef4 |
  bf4. r8 r4 |
  
  \barNumberCheck 17
  % ef major
  \repeat unfold 4 { bf2. | }
  ef2 af,4 |
  df2 gf,4 |
  s2. * 2 |
  
  \barNumberCheck 25
  gs8 gs gs gs gs gs |
  s4. gs4 s8
  <cs, fs cs' fs>\arpeggio <cs' fs cs'> q q q q |
  cs8 cs4 a s8 |
  s2. |
  cs2. |
  <ds gs>2 cs4 |
  b2 cs4 |
  
  \barNumberCheck 33
  \oneVoice <gs ds' gs>4. ds'8-.( ds-. ds-.) |
  \voiceFour \repeat unfold 4 { gs,2. | }
  b2 a4 |
  gs2 fs4 |
  fs2 e4 |
  
  \barNumberCheck 41
  fs2 fss4 |
  <cs gs' cs>8 cs' cs cs cs cs |
  cs8 cs cs cs cs cs |
  cs4 b a |
  \oneVoice <cs, gs' cs>2._\fermata |
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
  s2.\p\< |
  s4\> s2\! 
  \override DynamicLineSpanner.Y-offset = 1
  s2.\< |
  s4\> s2\! |
  \revert DynamicLineSpanner.Y-offset
  s2.\cresc |
  s2. * 2 |
  s4 s2-\tweak Y-offset -4.5 \tweak extra-offset #'(0 . 0.5) \p |
  
  \barNumberCheck 9
  s2 s4-\tweak extra-offset #'(0 . -1) \cresc |
  s2. * 3 |
  s2.\f |
  s2. * 2 |
  s4 s2-\tweak Y-offset -3 -\tweak extra-offset #'(0 . 0.5) \dim |
  
  \barNumberCheck 17
  s2.-\tweak extra-offset #'(0 . 1) \pp |
  s2. |
  s2.-\tweak extra-offset #'(1.5 . 1) \ppp |
  s2. |
  s2.\mf |
  s2. * 3 |
  
  \barNumberCheck 25
  s2.\cresc |
  s4.\f s\< |
  s4\> s2\! |
  \override DynamicLineSpanner.Y-offset = 0.5
  s2.\< |
  s4\> s2\! |
  \revert DynamicLineSpanner.Y-offset
  s2.\mf |
  s2. |
  s2.-\tweak Y-offset -2 \> |
  
  \barNumberCheck 33
  s4 s2\! |
  s2.\pp |
  s2. |
  s2.-\tweak X-offset 0 \pp |
  s2. * 3 |
  s2.-\tweak extra-offset #'(0 . 0.5) \dim |
  
  \barNumberCheck 41
  s2. |
  s2.-\tweak Y-offset -5 \ppp |
}

% MIDI only 
pedal = {
  s4\sd s\su\sd s\su\sd |
  s4\su\sd s2\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s8\su\sd s4\su\sd s8\su\sd |
  
  \barNumberCheck 9
  s4\su\sd s2\su\sd |
  s4\su\sd s8\su\sd s4\su\sd s8\su\sd |
  s4\su\sd s2\su\sd |
  s4\su\sd s8\su\sd s4\su\sd s8\su\sd |
  s4\su\sd s2\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s2.\su\sd
  
  \barNumberCheck 17
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s2\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s2\su\sd |
  s4\su\sd s\su\sd s8\su\sd s\su\sd |
  s4\su\sd s\su\sd s8\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  
  \barNumberCheck 25
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s2\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  
  \barNumberCheck 33
  s2.\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  
  \barNumberCheck 41
  s4\su\sd s\su\sd s\su\sd |
  s2\su\sd s4\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s4\su\sd s\su\sd s\su\sd |
  s2.\su\sd <>\su |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \tempo Andante 4 = 60
  s2. * 7 |
  s4 \tempo 4 = 56 s2 |
  
  \barNumberCheck 9
  \tempo 4 = 60
  s2. * 7 |
  s4 \tempo 4 = 56 s2 |
  
  \barNumberCheck 17
  \tempo 4 = 60
  s2. * 6 |
  \tempo 4 = 63 s2. |
  \tempo 4 = 66 s2. |
  
  \barNumberCheck 25
  \tempo 4 = 63 s2. |
  \tempo 4 = 60
  s2. * 7 |
  
  \barNumberCheck 33
  s4 \tempo 4 = 56 s2 |
  \tempo 4 = 60
  s2. * 6 |
  \tempo 4 = 58 s2. |
  
  \barNumberCheck 41
  \tempo 4 = 56 s2. |
  \tempo 4 = 60
  s2. * 2 |
  \tempo 4 = 56 s2 \tempo 4 = 50 s4 |
  \tempo 4 = 46 s2. |
}

forceBreaks = {
  s2. * 3 s2. \break
  s2. * 3 s2. \break
  s2. * 3 s2. \break
  s2. * 3 s2. \break
  s2. * 3 s2. \pageBreak
  
  s2. * 3 s2. \break
  s2. * 4 s2. \break
  s2. * 3 s2. \break
  s2. * 3 s2. \break
  s2. * 3 s2. \break
}

etudeOneNotes =
\score {
  \header {
    title = "Etude"
    composer = "Alexander Scriabin"
    opus = "Opus 2, No. 1"
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

etudeOneMidi =
\book {
  \bookOutputName "etude-op2-no1"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi{}
  }
}
