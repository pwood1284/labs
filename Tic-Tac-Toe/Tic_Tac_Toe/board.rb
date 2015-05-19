require 'pry'
require './run'
require './player'
class Board
  WINS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
  def initialize
    @spaces = (1..9).to_a
  end
  def win?
    WINS.any? do |a, b, c|
      @spaces[a] == @spaces[b] == @spaces[c]
  end
  def draw?
    @spaces.all? {|x| x.is_a? String}
  end
  def move(space, piece)
    @spaces[space-1] = piece
  end

  def show
    puts
    puts
    puts" _______ _          _______             _______         "
    puts"|__   __(_)        |__   __|           |__   __|        "
    puts"   | |   _  ___ ______| | __ _  ___ ______| | ___   ___ "
    puts"   | |  | |/ __|______| |/ _` |/ __|______| |/ _   / _  "
    puts"   | |  | | (__       | | (_| | (__       | | (_) |  __/"
    puts"   |_|  |_| ___|      |_| __,_| ___|      |_| ___/  ___|"
    puts
    puts
    puts "                          +     +     "
    puts "                       #{@spaces[0]}  |  #{@spaces[1]}  |  #{@spaces[2]}  "
    puts "                     -----+-----+-----"
    puts "                       #{@spaces[3]}  |  #{@spaces[4]}  |  #{@spaces[5]} "
    puts "                     -----+-----+-----"
    puts "                       #{@spaces[6]}  |  #{@spaces[7]}  |  #{@spaces[8]} "
    puts "                          +     +     "
    puts
    puts
  end
end

# game_board = Board.new
# game_board.board



binding.pry
