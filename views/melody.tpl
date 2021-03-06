{
  "minimum_frequency": {{melody.minimum_frequency}},
  "notes": [
  % for note_index, note in enumerate(melody.notes):
    {
      "start": {{note.start}},
      "name": {{!'"' + note.name + '"' if note.name != None else 'null'}},
      "frequency": {{note.frequency if note.frequency != None else 'null'}},
      "relative_frequency": {{note.relative_frequency if note.relative_frequency != None else 'null'}},
      "pitches": [
      % for pitch_index, pitch in enumerate(note.pitches):
        {
          "start": {{pitch.start}},
          "frequency": {{pitch.frequency if pitch.frequency != None else 'null'}},
          "relative_frequency": {{pitch.relative_frequency if pitch.relative_frequency != None else 'null'}}
        }{{',' if pitch_index < len(note.pitches) - 1 else ''}}
      % end
      ]
    }{{',' if note_index < len(melody.notes) - 1 else ''}}
  % end
  ]
}
