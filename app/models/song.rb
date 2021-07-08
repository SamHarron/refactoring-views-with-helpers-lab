class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name   #reader - gets the artist name
    artist.name if artist
  end

  def artist_name=(name)  #writer - sets the artist name if no song artist name is found
    a = Artist.find_or_create_by(name: name)
    self.artist = a
  end
end
