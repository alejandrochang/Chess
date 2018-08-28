require_relative "Piece.rb"
require 'singleton'

class NullPiece < Piece
  include Singleton
  attr_accessor :null
  def initialize
    @null = :null
    @value = "_"
  end 

  
  def moves
  end
  
  def symbol
    :null
  end
  
end