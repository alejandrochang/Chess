class Bishop < Piece
  
  require 'SlidingPiece'
  
  def symbol
    
  end 
  
  def move_dirs
    diagonal_dirs
  end 
end