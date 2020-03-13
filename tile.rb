require_relative "Board"
require "colorize"

class Tile
  attr_accessor :value

  def initialize(value)
    @value = value
    @revealed = false
  end

 



end