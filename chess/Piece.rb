class Piece
  attr_reader :color, :board, :pos, :value 
  
  def initialize(color, pos)
    @color = color
    @value = " P "
    @pos = pos
  end 

  
  def moves #will be made with subclasses 
    possible_moves = []
    # should return an array of places a PIece can move to 
  end
  
  def empty?
    
  end
  
  def to_s
    
  end
  
  def valid_moves
    
  end
  
  def pos=(val)
    
  end
  
  def symbol
    
  end
  
  def inspect 
    self.value
  end 
  
  private
  def move_into_check?(end_pos)
    
  end
end 