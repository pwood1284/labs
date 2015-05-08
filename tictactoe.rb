board = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]


#Greets the user. Asks user if

def greeting(board)
  puts "Would you like to play a game of Tic Tac Toe?"
  answer = gets.chomp.downcase
  if answer == "yes"
    two_player?(board)
  elsif answer == "no"
    puts "That's ok. Comeback when you are ready to play!"

  else
    puts "Please answer with Yes or No"
    greeting
  end
end

def two_player?(board)
  puts "Will you be playing somebody else?"
    answer = gets.chomp.downcase
  if answer == "yes"
    puts "Have fun you two!"
    print_board(board)
    player_one_turn(board)

  elsif answer == "no"
    cpu_player?(board)
  else
    puts "Please answer with Yes or No"
      two_player?(board)
  end
end

def cpu_player?(board)
puts "Would you like to play me then?"
answer = gets.chomp.downcase
  if answer == "yes"
    puts "Sweet! Let's go!"
    print_board(board)
  elsif answer == "no"
    puts "Oh. Ok. Maybe later then. Goodbye!"
  else
    puts "Please answer with Yes or No"
  end
end



def print_board(board)
  puts "     +     +     "
  puts "  #{board[0]}  |  #{board[1]}  |  #{board[2]}  "
  puts "-----+-----+-----"
  puts "  #{board[3]}  |  #{board[4]}  |  #{board[5]} "
  puts "-----+-----+-----"
  puts "  #{board[6]}  |  #{board[7]}  |  #{board[8]} "
  puts "     +     +     "
end

def two_player_game_init()
  puts "Player one, make your move by selecting a spot (1-9):"
  player_one_answer = gets.chomp.to_i

end

def player_one_turn (board)
  puts "Make your move player one:"
  player_one_move = gets.chomp.to_s
  if player_one_move == "1"
    board[0] = "X"
    print_board(board)
    check(board)
    player_two_turn(board)

  elsif player_one_move == "2"
    board[1] = "X"
    print_board(board)
    check(board)
    player_two_turn(board)
  elsif player_one_move == "3"
    board[2] = "X"
    print_board(board)
    check(board)
    player_two_turn(board)
  elsif player_one_move == "4"
    board[3] = "X"
    print_board(board)
    check(board)
    player_two_turn(board)
  elsif player_one_move == "5"
    board[4] = "X"
    print_board(board)
    check(board)
    player_two_turn(board)
  elsif player_one_move == "6"
    board[5] = "X"
    print_board(board)
    check(board)
    player_two_turn(board)
  elsif player_one_move == "7"
    board[6] = "X"
    print_board(board)
    check(board)
    player_two_turn(board)
  elsif player_one_move == "8"
    board[7] = "X"
    print_board(board)
    check(board)
    player_two_turn(board)
  elsif player_one_move == "9"
    board[8] = "X"
    print_board(board)
    check(board)
    player_two_turn(board)
  else
    puts "Please select a number between 1 and 9"
    player_one_turn(board)
  end
end

def player_two_turn (board)
  puts "Make your move player two:"
  player_two_move = gets.chomp.to_s
  if player_two_move == "1"
    board[0] = "O"
    print_board(board)
    check(board)
    player_one_turn(board)
  elsif player_two_move == "2"
    board[1] = "O"
    print_board(board)
    check(board)
    player_one_turn(board)
  elsif player_two_move == "3"
    board[2] = "O"
    print_board(board)
    check(board)
    player_one_turn(board)
  elsif player_two_move == "4"
    board[3] = "O"
    print_board(board)
    check(board)
    player_one_turn(board)
  elsif player_two_move == "5"
    board[4] = "O"
    print_board(board)
    check(board)
    player_one_turn(board)
  elsif player_two_move == "6"
    board[5] = "O"
    print_board(board)
    check(board)
    player_one_turn(board)
  elsif player_two_move == "7"
    board[6] = "O"
    print_board(board)
    check(board)
    player_one_turn(board)
  elsif player_two_move == "8"
    board[7] = "O"
    print_board(board)
    check(board)
    player_one_turn(board)
  elsif player_two_move == "9"
    board[8] = "O"
    print_board(board)
    check(board)
    player_one_turn(board)
  else
    puts "Please select a number between 1 and 9"
    player_two_turn(board)
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

  end
  exit if finished

end


greeting(board)
