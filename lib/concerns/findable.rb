module Concerns::Findable

  def self.find_by_name(name)
    self.all.find { |x| x.name == name}
  end

  def self.create(name)
   new_song = self.new(name)
   new_song.save
   new_song
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create(name)
  end

end
