class Song

  attr_accessor :name, :genre, :artist

  def initialize(name, genre)
    @name = name
    @genre = genre
    genre.add_song(self) #when a song is made, this adds the song to the genre @songs array thorugh the add_song method, which is then
  end                    #used to iterate throguh with Genre#artists to find all the songs artists.


end
