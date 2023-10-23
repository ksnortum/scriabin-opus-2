\version "2.24.0"

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

sd = \sustainOn
su = \sustainOff

insideSlur = \tweak avoid-slur #'inside \etc

hideNoteHead = {
  \once {
    \omit Stem
    \omit Dots
    \omit Flag
    \hideNotes
  }
}

tupletOff = {
  \omit TupletNumber
  \omit TupletBracket
}
tupletOn = {
  \undo \omit TupletNumber
  \undo \omit TupletBracket
}

noAccidental = \single \omit Accidental \etc
