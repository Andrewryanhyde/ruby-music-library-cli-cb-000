module Concerns::Findable

  def self.find_by_name(song)
    self.all.find { |x| x.name == song} ||
  end

  def self.create(name)
   new_song = self.new(name)
   new_song.save
   new_song
  end

  def self.find_or_create_by_name(song)
    self.find_by_name(song) || self.create(song)
  end

end
