require 'colorize'

# require 'colorized_string'
require_relative 'Board.rb'
require_relative 'cursor.rb'

class Display
  
  attr_accessor :board, :notifications, :cursor
  
  def initialize(board)
    @board = Board.new
    @cursor = Cursor.new([0,0], board)
    # @notifications = {}
  end
  # 
  # def build_row(row, i)
  #   # row.map.with_index do |piece, j|
  # 
  # end 
  
  def render 
    @board.rows.map.with_index do |row, row_i|
      row.each_with_index do |col, col_i|
        pos = [row_i,col_i]
        if row_i.odd? 
          print @board[pos].value.colorize(:color => :black, :background => :light_black) if col_i.even? 
          print @board[pos].value.colorize(:color => :red, :background => :light_white) if col_i.odd?
        elsif row_i.even?
          print @board[pos].value.colorize(:color => :black, :background => :light_black) if col_i.odd?
          print @board[pos].value.colorize(:color => :red, :background => :light_white) if col_i.even?
        end  
      end 
      print "\n"
      
    end 
  end 
end



###### if row.odd? 