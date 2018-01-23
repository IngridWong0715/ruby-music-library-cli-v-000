require 'pry'

class Genre
    extend Findable::ClassMethods
    extend Persistable::ClassMethods
    include Persistable::InstanceMethods
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end
  def self.all
    @@all
  end


  def self.create(name)
    Genre.new(name).tap do |o|
      o.save
    end
    genre = Genre.new(name)
    genre.save
    genre
  end

  def add_song(song)
    song.genre=(self) if !song.genre
    @songs << song if !@songs.include?(song)
  end

  def artists
    self.songs.collect {|song| song.artist}.uniq
  end
end
