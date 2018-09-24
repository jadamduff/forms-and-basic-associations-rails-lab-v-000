class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def genre_name=(genre)
    genre = Genre.find_or_create_by(name: genre.name)
  end
end
