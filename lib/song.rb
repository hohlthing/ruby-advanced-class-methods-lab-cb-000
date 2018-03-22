class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = Song.new
    song.save
#    song
  end

  def self.new_by_name(name)
    song = Song.new
    song.name = name
#    song
  end

  def self.create_by_name(name)
    song = Song.new
    song.name = name
    song.save
#    song
  end

  def self.find_by_name(name)
    self.all.detect { |x| x.name == name }
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) ? self.find_by_name(name) : self.create_by_name(name)
  end

  def self.alphabetical
    self.all.sort_by { |x| x.name }
  end

  def self.new_from_filename(filename)



  end

  def self.create_from_filename(filename)
    song = self.new_from_filename(filename)
    song.save
  end

   +
   +  def self.new_from_filename(filename)
   +    info = filename.split(" - ")
   +    artist = info[0]
   +    name = info[1].split(".")[0]
   +    song = self.new
   +    song.artist_name = artist
   +    song.name = name
   +    song
   +  end




  def self.destroy_all
    @@all.clear
  end

end
