class Song
  attr_accessor :name, :artist_name
  @@all = []

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = self.create
    song.name = name
    song
  end

  def self.find_by_name(name)
    @@all.detect { |x| x.name == name}
  end

  def self.all
    @@all
  end




end
