# require 'pry'
require './run'
# require './player'
class Board

  def initialize
    @spaces = [1,2,3,4,5,6,7,8,9]
  end

  def board
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



# binding.pry
