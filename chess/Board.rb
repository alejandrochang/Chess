require_relative "Piece.rb"
require_relative "NullPiece.rb"

class Board 
  def initialize
    @rows = Array.new(8) {Array.new(8)}
    @null = NullPiece.new
  end 
  
  def [](pos)
    row, col = pos
    @rows[row][col]
  end 
  
  def []=(pos,value)
    row, col = pos
    @rows[row][col] = value
  end 
  
  def move_piece(color, start_pos, end_pos)
    raise "exception" if start_pos.nil?
    raise "exception" unless valid_pos?(end_pos)
    
    
  end 
  
  def populate_null(null)
    @rows[2..5].each_with_index do |row, row_idx|
      row.each_index do |col_idx|
        @rows[row_idx][col_idx] = @null
      end 
    end 
  end 
  
  def populate_pieces
    
  end
  
  private 
  
  attr_reader :Piece
end 
