require 'pry'
class Song
require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/paramable'
extend Memorable::ClassMethods
include Memorable::InstanceMethods
  extend Findable
  include Paramable
  attr_accessor :name
  attr_reader :artist

  @@songs = []

 
  def self.all
    @@songs
  end

  

  def artist=(artist)
    @artist = artist
  end

end
