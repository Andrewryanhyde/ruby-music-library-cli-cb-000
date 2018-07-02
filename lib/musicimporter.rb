class MusicImporter

  attr_accessor :path

  def inititalize(path)
    @path = path
  end


  def files
     Dir.entries(path).select {|f| !File.directory? f }
  end

  def self.import 
    filename = self.files
    filename.each do |file| 
      Song.create_from_filename(file)
  end
  end
end
