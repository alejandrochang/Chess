class King < Piece
  def initialize(color, board, pos)
    super(color, board, pos)
    @value = :K
  end 
end


#all have a background color 
# if there is a piece on it, it will have the piece, and the background color 