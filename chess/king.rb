class King < Piece
  def initialize(color, board, pos)
    super(color, board, pos)
    @value = :K
  end 
end