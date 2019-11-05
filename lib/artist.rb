require 'pry'
require_relative '../lib/concerns/memorable'
class Artist
  include Memorable::InstanceMethods
  extend Memorable::ClassMethods
  attr_accessor :name
  attr_reader :songs

  def initialize
    @songs = []
    super
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.all
    @@all
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
