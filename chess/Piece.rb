class Piece
  attr_reader :color, :board, :pos
  
  def initialize(color, board, pos)
    @color, @board= color, board
    @pos = nil
  end 
  
end 