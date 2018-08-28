require 'colorize'
require 'colorized_string'

class Display
  def initialize(board)
    @board = Board.new
    @cursor = Cursor.new([0,0], board)
  end
  
  
end