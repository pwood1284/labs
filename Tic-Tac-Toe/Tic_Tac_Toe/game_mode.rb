require '/.run/'

class GameMode
  def initialize
    def game_mode?
      while true
        puts
        puts
        puts
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
        puts "Select the number for the Game Mode you would like to play:"
        puts
        puts
        puts "+-------------------+------------------------+-------------------------+"
        puts "|   Human vs Human  |    Human vs Computer   |   Computer vs Computer  |"
        puts "|        (1)        |          (2)           |           (3)           |"
        puts "|                   |                        |                         |"
        puts "+-------------------+------------------------+-------------------------+"
        puts
        puts
        puts
        puts
        puts
          answer = gets.chomp.to_s
            if answer == "1" || answer == "2" || answer == "3"
              if answer == "1"
                puts "Have fun you two!"
                board = Board.new
                
              elsif answer == "2"
                human_vs_cpu(board)
              else
                cpu_vs_cpu(board)
              break
              puts "Select a number between (1-3)"
            end
          end
        end
      end
    end
  end
end
