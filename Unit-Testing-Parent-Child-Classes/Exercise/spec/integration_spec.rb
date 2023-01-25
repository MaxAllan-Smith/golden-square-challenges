require "music_library"
require "track"

describe MusicLibrary do
  it "Adds and Lists all the tracks in the library" do
    music_library = MusicLibrary.new
    track1 = FakeTrack.new("Sweet Child O Mine", "Guns and Roses")
    music_library.add(track1)
    expect(music_library.all).to eq([track1])
  end

  
end

class FakeTrack
  def initialize(title, artist)
    @title = title
    @artist = artist
  end
end