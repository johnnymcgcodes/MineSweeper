require_relative "Tile"

class Board
  
  def self.empty_grid
    Array.new(9) do
      Array.new(9) {Tile.new("_")}
    end
  end

  def self.from_file(file_name)
    rows = File.readlines(file_name).map(&:chomp)
    tiles = rows.map do |row|
      spots = row.split("").map {|char| char}
      spots.map {|spot| Tile.new(spot)}
    end
    self.new(tiles)
  end
  
  def initialize(grid = Board.empty_grid)
    @grid = grid
  end

  def [](pos)
    row, col = pos
    grid[row][col]
  end
  #def explore_tile(pos)
#
 # end


  private
  attr_reader :grid

end