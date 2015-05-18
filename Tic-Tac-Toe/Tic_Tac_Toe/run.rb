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

def board_full(board)
finished = false
  if board[0].to_i + board[1].to_i + board[2].to_i +
     board[3].to_i + board[4].to_i + board[5].to_i +
     board[6].to_i + board[7].to_i + board[8].to_i == 0
     puts
     puts
     puts
     puts
     puts"It's a tie!"

     puts
     print_board(board)
     puts

      finished = true
  end
end

def check(board)
  finished = false
    if board[0] == board[1] && board[0] == board[2]
    puts "Game Over! You Win!"
    finished = true
  elsif board[3] == board[4] && board[3] == board[5]
    puts "Game Over! You Win!"
    finished = true
  elsif board[6] == board[7] && board[6] == board[8]
    puts "Game Over! You Win!"
    finished = true
  elsif board[0] == board[3] && board[0] == board[6]
    puts "Game Over! You Win!"
    finished = true
  elsif board[1] == board[4] && board[1] == board[7]
    puts "Game Over! You Win!"
    finished = true
  elsif board[2] == board[5] && board[2] == board[8]
    puts "Game Over! You Win!"
    finished = true
  elsif board[0] == board[4] && board[0] == board[8]
    puts "Game Over! You Win!"
    finished = true
  elsif board[2] == board[4] && board[2] == board[6]
    puts "Game Over! You Win!"
    finished = true
  elsif board_full(board)
    finished = true
  end
  exit if finished
end
