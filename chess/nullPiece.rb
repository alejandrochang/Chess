require_relative "piece.rb"
require 'singleton'

class NullPiece < Piece
  include Singleton
  attr_accessor :null, :value
  def initialize
    @null = "null"
    @value = "___"
  end 

  
  def moves
  end
  
  def symbol
    "null"
  end
  
end