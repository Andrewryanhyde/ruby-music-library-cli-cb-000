module Concerns::Findable

  def self.find_by_name(song)
    self.all.find { |x| x.name == song}
  end

end
