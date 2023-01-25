# File: lib/music_library.rb

class MusicLibrary
  def initialize
    @tracks = []
  end

  def add(track)
    return @tracks << track
  end

  def all
    return @tracks
  end
  
  def search(keyword) # keyword is a string
    search = []
    @tracks.each do |x|
      if x.matches?(keyword)
        search << x
      end
    end
    return search
  end
end