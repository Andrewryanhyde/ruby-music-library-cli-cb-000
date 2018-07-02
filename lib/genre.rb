class Genre

  attr_accessor  :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.destroy_all
    @@all.clear
  end

  def self.create(name)
    genre = Genre.new(name)
    genre.save
    genre
  end

  def songs
    @songs
  end

  def add_song(song)
     song.genre = self if song.genre == nil
     self.songs << song unless self.songs.include?(song)
  end

  def artists
    self.artist.collect {|genre| genre.artist}.uniq
  end



end
