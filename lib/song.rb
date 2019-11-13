class Song
  attr_accessor :artist, :name 
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(file)
    file_array = file.split(" - ")
    name = file_array[1]
    artist = file_array[0]
    @artist = artist  
    
    song = Song.new(name)
 
    artist_instance = Artist.find_or_create_by_name(artist)
    song.artist = artist_instance
    # song.artist.songs << song.name 
    song 
  end 
end


=begin


=end 