require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

#   def self.new_by_filename(file_name)
#     song = file_name.split(" - ")[1]
#     artist_name = file_name.split(" - ")[0]
#
#     song_new = self.new(song)
#     song_new.artist= artist_name
#     song_new
#   end
#
# end

  def self.new_by_filename(filename)
    artist, song = filename.split(" - ")
    new_song = self.new(song)
    new_song.artist = Artist.find_or_create_by_name(artist)
    new_song.artist.add_song(new_song)
    new_song
  end

# def artist_name=(name)
#   self.artist = Artist.find_or_create_by_name(name)
#   artist.add_song(self)
# end

  # def artist=(artist_name)
  #   binding.pry
  #   @artist = Artist.find_or_create_by_name(artist_name)
  #
  #   # artist.add_song(self)
  # end

end
