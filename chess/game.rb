class Game
  def initialzie(grid, players)
    @board = Board.new
    @display = display
    @players = {}
    @current_player = #something
  end
  
  def display; end
  
  def play; end 
  
  private
  
  def notify_players; end 
  
  def swap_turn!; end 
  
end