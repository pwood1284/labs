require '/.game_mode'
require '/.board'

class Run
  def initialize
    def greeting(board)
      while true
        puts
        puts
        puts
        puts
        puts
        puts
        puts
        puts
        puts
        puts
        puts
        puts
        puts "Would you like to play a game of Tic Tac Toe? (Y/N)"
        puts
        puts
        puts
        puts
        puts
        puts
        puts
        puts
        puts
        puts
        puts
        puts
        puts
    answer = gets.chomp.downcase
      if answer == "y" || answer == "n"
        if answer == "y"
          game_mode_initialize = GameMode.new
          game_mode_initialize.game_mode?
        else
          puts "Ok. Come back when you are ready to play"
          break
        end
      else
        puts "Please answer with Yes or No"
        end
      end
    end
  end
end
