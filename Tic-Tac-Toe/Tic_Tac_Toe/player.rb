require 'pry'
class Player

  def initialize
    @letter = choose_letter
  end

  def choose_letter
    puts "Pick a letter (X or O)"
    gets.chomp
  end
  def get_move
    puts "Please choose a move: "
    gets.chomp.to_i
  end
  def letter
    @letter
  end
end


# binding.pry




# def initialize
#     def get_name
#       puts "Whats your name player 1 ? :"
#       @name = gets.chomp
#     end
#   end
#   def hello_player
#     puts "Hello #{@name}!"
#   end
#
#   def hello_player_vs_cpu(name_of_player)
#     puts "Hello #{name_of_player}! Good luck!"
#   end
#   def player_vs_player
#     player1_name = get_name
#     player2_name = get_name
#
#     hello_player(player1_name)
#     hello_player(player2_name)
#   end
#
#   def player_vs_cpu
#     player1_name = get_name
#     hello_player_vs_cpu(player1_name)
#   end
# end
#
#
# def player_vs_player(board)
#   print_board(board)
#   puts
#   puts "Player one, you're X's"
#   puts "Make your move:"
#   puts
#   player_one_move = gets.chomp.to_s
#
#   if player_one_move == "1"
#     board[0] = "X"
#     print_board(board)
#     check(board)
#     player_two_turn(board)
#
#   elsif player_one_move == "2"
#     board[1] = "X"
#     print_board(board)
#     check(board)
#     player_two_turn(board)
#   elsif player_one_move == "3"
#     board[2] = "X"
#     print_board(board)
#     check(board)
#     player_two_turn(board)
#   elsif player_one_move == "4"
#     board[3] = "X"
#     print_board(board)
#     check(board)
#     player_two_turn(board)
#   elsif player_one_move == "5"
#     board[4] = "X"
#     print_board(board)
#     check(board)
#     player_two_turn(board)
#   elsif player_one_move == "6"
#     board[5] = "X"
#     print_board(board)
#     check(board)
#     player_two_turn(board)
#   elsif player_one_move == "7"
#     board[6] = "X"
#     print_board(board)
#     check(board)
#     player_two_turn(board)
#   elsif player_one_move == "8"
#     board[7] = "X"
#     print_board(board)
#     check(board)
#     player_two_turn(board)
#   elsif player_one_move == "9"
#     board[8] = "X"
#     print_board(board)
#     check(board)
#     player_two_turn(board)
#   else
#     puts "Please select a number between 1 and 9"
#     player_one_turn(board)
#   end
# end
#
# def player_two_turn (board)
#   puts
#   puts "Player two, you're O's"
#   puts "Make your move:"
#   puts
#   player_two_move = gets.chomp.to_s
#   if player_two_move == "1"
#     board[0] = "O"
#     print_board(board)
#     check(board)
#     player_vs_player(board)
#   elsif player_two_move == "2"
#     board[1] = "O"
#     print_board(board)
#     check(board)
#     player_vs_player(board)
#   elsif player_two_move == "3"
#     board[2] = "O"
#     print_board(board)
#     check(board)
#     player_vs_player(board)
#   elsif player_two_move == "4"
#     board[3] = "O"
#     print_board(board)
#     check(board)
#     player_vs_player(board)
#   elsif player_two_move == "5"
#     board[4] = "O"
#     print_board(board)
#     check(board)
#     player_vs_player(board)
#   elsif player_two_move == "6"
#     board[5] = "O"
#     print_board(board)
#     check(board)
#     player_vs_player(board)
#   elsif player_two_move == "7"
#     board[6] = "O"
#     print_board(board)
#     check(board)
#     player_vs_player(board)
#   elsif player_two_move == "8"
#     board[7] = "O"
#     print_board(board)
#     check(board)
#     player_vs_player(board)
#   elsif player_two_move == "9"
#     board[8] = "O"
#     print_board(board)
#     check(board)
#     player_vs_player(board)
#   else
#     puts "Please select a number between 1 and 9"
#     player_two_turn(board)
#   end
# end
#
#
# def player1_vs_cpu_turn (board)
#   print_board(board)
#   puts
#   puts "You're X's"
#   puts "Make your move:"
#   puts
#   player1_vs_cpu_move = gets.chomp.to_s
#   if player1_vs_cpu_move == "1"
#     board[0] = "X"
#     print_board(board)
#     check(board)
#     choose_cpu_move(board)
#   elsif player1_vs_cpu_move == "2"
#     board[1] = "X"
#     print_board(board)
#     check(board)
#     choose_cpu_move(board)
#   elsif player1_vs_cpu_move == "3"
#     board[2] = "X"
#     print_board(board)
#     check(board)
#     choose_cpu_move(board)
#   elsif player1_vs_cpu_move == "4"
#     board[3] = "X"
#     print_board(board)
#     check(board)
#     choose_cpu_move(board)
#   elsif player1_vs_cpu_move == "5"
#     board[4] = "X"
#     print_board(board)
#     check(board)
#     choose_cpu_move(board)
#   elsif player1_vs_cpu_move == "6"
#     board[5] = "X"
#     print_board(board)
#     check(board)
#     choose_cpu_move(board)
#   elsif player1_vs_cpu_move == "7"
#     board[6] = "X"
#     print_board(board)
#     check(board)
#     choose_cpu_move(board)
#   elsif player1_vs_cpu_move == "8"
#     board[7] = "X"
#     print_board(board)
#     check(board)
#     choose_cpu_move(board)
#   elsif player1_vs_cpu_move == "9"
#     board[8] = "X"
#     print_board(board)
#     check(board)
#     choose_cpu_move(board)
#   else
#     puts "Please select a number between 1 and 9"
#     player1_vs_cpu_turn(board)
#   end
