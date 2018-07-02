module Concerns::Findable

  def find_by_name(name)
    self.all.find { |x| x.name == name}
  end

  def create(name)
   new_song = self.new(name)
   new_song.save
   new_song
  end

  def find_or_create_by_name(name)
    self.find_by_name(name) || self.create(name)
  end

end
