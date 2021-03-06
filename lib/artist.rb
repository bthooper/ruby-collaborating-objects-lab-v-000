# Artist class


class Artist

  attr_accessor :name 

  @@all = []

  def initialize(name = nil)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    @songs.push(song)
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)

    answer = nil
    
    @@all.each do |artist|
      if artist.name == name
        answer = artist
      end
    end

    if answer == nil
      answer = Artist.new(name)
    end

    answer
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

  


end

