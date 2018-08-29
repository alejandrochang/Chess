require 'byebug'
require_relative "pieces.rb"
require_relative "nullPiece.rb"
require_relative "cursor.rb"

class Board  
  attr_accessor :rows, :null
  def initialize
    @empty_space = NullPiece.instance
    @rows = Array.new(8) {Array.new(8, @empty_space)}
    populate_null
    place_pawn
  end 
  
  def [](pos)
    row, col = pos
    @rows[row][col]
  end 
  
  def []=(pos,value)
    row, col = pos
    @rows[row][col] = value  
  end 
    
  def move_piece(start_pos, end_pos)
    raise "exception" if start_pos.nil?
    raise "exception" unless valid_pos?(end_pos)
    
    self[start_pos] = @empty_space
    self[end_pos] = :piece
  end 
  
  def valid_pos?(end_pos)
    i,j = end_pos
    if i < 0 || i > 7 || j < 0 || j > 7
      return false
    else
      return true
    end
  end
  
  def populate_null
    # debugger 
    (0..1).each do |i|
       (0..7).each do |j|
         pos= [i,j]
         self[pos] = Piece.new(:black, pos)
       end 
     end 
     
     (6..7).each do |i|
       (0..7).each do |j|
         pos = [i,j]
         self[pos] = Piece.new(:white, pos)
       end 
     end 
  end 
  
  def place_pawn
    # debugger
    # 8.times do |j| 
    #   i = 1
    #   pos = i,j
    #   Pawn.new(:white, pos)
    # end 
  end 
  
  def populate_pieces
    
  end
  
  # def inspect
  #   "#{@empty_space}"
  # end
  private 
  
  attr_reader :Piece
end 
