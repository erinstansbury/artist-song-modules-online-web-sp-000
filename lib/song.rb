require 'pry'

class Song
  extend Memorable::ClassMethods
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def artist=(artist)
    @artist = artist
  end

  def self.find_by_name(name)
    @@songs.detect{|s| s.name == name}
  end

  def self.all
    @@songs
  end
end
