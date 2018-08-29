class Pawn < Piece
  def initialize(color, pos)
    super(color, pos)
    @value = :P
  end 
end