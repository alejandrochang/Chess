class Piece
  attr_reader :color, :board, :pos, :value 
  
  def initialize(color, board, pos)
    @color, @board = color, board
    @value = "p"
  end 
  
  def inspect 
    self.value
  end 
end 