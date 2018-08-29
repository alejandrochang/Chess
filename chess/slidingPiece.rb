# bishop/rook/queen
module SlidingPiece
  HORIZONTAL_DIR = [[0,1], [0,-1], [1,0], [-1, 0]]
  DIAGONAL_DIR = [[1,1], [-1, 1], [-1, -1], [1, -1]]
  
  def horizontal_dirs
    HORIZONTAL_DIR
  end  
  
  def diagonal_dirs
    DIAGONAL_DIR
  end
  
  def moves
    moves = []
    
    move_dirs.each do |dx, dy|
      moves.concat(grow_unblocked_moves_in_dir(dx, dy))
    end
    
    moves
  end
    
  def move_dirs; end
  
  def grow_unblocked_moves_in_dir(dx, dy)
    current_x, current_y = pos
    moves = []
    
    loop do 
      current_x, current_y = current_x + dx, current_y + dy
      pos = [current_x, current_y]
      break unless Board.valid_pos?(pos)
      
      if board[pos].nil? 
        moves << pos
      elsif board[pos].color != color
        moves << pos
      else
        break
      end
    end 
    
    moves
  end
end