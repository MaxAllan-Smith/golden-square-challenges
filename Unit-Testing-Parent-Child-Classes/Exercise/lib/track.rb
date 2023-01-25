# File: lib/track.rb

class Track
  def initialize(title, artist)
    @title = title
    @artist = artist
  end

  def matches?(keyword)
    string = @title + @artist
    string.include?(keyword)
  end
end