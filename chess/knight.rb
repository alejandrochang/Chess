class Knight < Piece
  def initialize(color, board, pos)
    super(color, board, pos)
    @value = :k
  end 
end