require 'pry'
require 'set'

require './board'
require './player'


class Game
  def initialize
    @board = Board.new
    @turn_count = 9 # 9 possible moves before game ends.
    @win_game = win_game
  end

  def finished?
    @turn_count.zero? || @win_game = true
  end

  def play
    until self.finished?
      self.turn
    end
    puts "Thanks for playing!"
  end

  def get_move
  end

  def turn
    move = self.get_move
    @turn_count -= 1
  end
end

binding.pry
