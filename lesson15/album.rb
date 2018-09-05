class Artist
  attr_reader :name
  attr_reader :albums
  
  def initialize(name)
    @name = name
    @albums = []
  end

  def add_album(name)
    @albums << name
  end
end

class Album
  attr_reader :name
  attr_reader :songs 
  
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end
end
  class Song
  attr_reader :name, :duration

  def initialize(name, duration)
    @name = name
    @duration = duration

  end
end

artist = Artist.new 'Metallica'

album1 = Album.new 'Master of Puppets'
album2 = Album.new 'Kill\'em all' 

song1 = Song.new 'Battery', 5
song2 = Song.new 'Master of Puppets', 6
song3 = Song.new 'Sanitarium', 4
song4 = Song.new 'Hit The Lights', 3
song5 = Song.new 'Harvester Of Sorrow', 5
song6 = Song.new 'The Four Horsemen', 6

artist.add_album album1
artist.add_album album2

album1.add_song song1
album1.add_song song2
album1.add_song song3
album2.add_song song4
album2.add_song song5
album2.add_song song6

puts
puts "Artist: #{artist.name}"
puts "==============================="
puts
artist.albums.each do |album|
  puts "Album: #{album.name}"
  puts "==============================="
  puts
    album.songs.each do |song|
      puts "Song: #{song.name}"
    end
    puts
    puts "==============================="
    puts
end