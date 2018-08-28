class Pawn < Piece
  def initialize(color, board, pos)
    super(color, board, pos)
    @value = :P
  end 
end