module Concerns::Findable

  def self.find_by_name(song)
    @@all.find { |x| x.name == song}
  end

end
