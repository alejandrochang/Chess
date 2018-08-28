class Queen < Piece
  def initialize(color, board, pos)
    super(color, board, pos)
    @value = :Q
  end 
end