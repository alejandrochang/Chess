class Rook < Piece
  def initialize(color, board, pos)
    super(color, board, pos)
    @value = :R
  end 
end