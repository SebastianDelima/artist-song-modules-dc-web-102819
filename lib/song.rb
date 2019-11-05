require 'pry'
require_relative '../lib/concerns/memorable'
class Song
  include Memorable::InstanceMethods
  extend Memorable::ClassMethods
  attr_accessor :name
  attr_reader :artist


  def initialize
    super
  end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
  end

end
