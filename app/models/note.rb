class Note < ActiveRecord::Base
  belongs_to :song

  def note_contents
    note_contents = []
    Note.all.each do |note|
      note_contents << note.content
    end
    note_contents
  end
end
