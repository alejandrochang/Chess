require 'colorize'
# require 'colorized_string'
require_relative 'Board.rb'
require_relative 'cursor.rb'

class Display
  def initialize(board)
    @board = Board.new
    @cursor = Cursor.new([0,0], board)
  end
  
  
end