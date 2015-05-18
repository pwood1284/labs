require 'pry'
# require '/.game_mode'
require './board'
require './player'

class Run
  def initialize
    @board = Board.new
    puts "Player 1!"
    @player1 = Player.new
    puts "Player 2!"
    @player2 = Player.new

    # def greeting(board)
    #   while true
    #     puts
    #     puts
    #     puts
    #     puts
    #     puts
    #     puts
    #     puts
    #     puts
    #     puts
    #     puts
    #     puts
    #     puts
    #     puts "Would you like to play a game of Tic Tac Toe? (Y/N)"
    #     puts
    #     puts
    #     puts
    #     puts
    #     puts
    #     puts
    #     puts
    #     puts
    #     puts
    #     puts
    #     puts
    #     puts
    #     puts
    # answer = gets.chomp.downcase
    #   if answer == "y" || answer == "n"
    #     if answer == "y"
    #       puts "code works"
    #
    #     else
    #       puts "Ok. Come back when you are ready to play"
    #       break
    #     end
    #   else
    #     puts "Please answer with Yes or No"
    #     end
    #   end
    # end
  end

  def game_over?
    board.win? || board.draw?
  end

  def play
    current_player = @player1
    until game_over?
      turn(current_player)
        if current_player == @player1
          current_player = @player2
        else
          current_player = @player1
        end
    end
  end

  def turn(player)
    @board.show
    index = player.get_move
    letter = player.letter
    @board.move(index, letter)
  end
end

binding.pry



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
