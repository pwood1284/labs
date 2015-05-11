
require 'pry'

# Gameboard array
board = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]

# Asks the user if they would like to play a game.
# Gets a yes or a no from the user.
# Loops if user does not specifically answer with a yes or no.
# If player answers yes function two_player? is called.

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
          game_mode?(board)
        else
          puts "Ok. Come back when you are ready to play"
          break
        end
      else
        puts "Please answer with Yes or No"
    end
  end
end


# Asks user if they will be playing another human, the cpu,
# or watch cpu play cpu



def game_mode?(board)
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
    puts "+-------------------+------------------------+-------------------------+ "
    puts "|   Human vs Human  |    Human vs Computer   |   Computer vs Computer  | "
    puts "|        (1)        |          (2)           |           (3)           | "
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
            player_vs_player(board)
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

def human_vs_cpu(board)
  puts "Good luck!"
    player1_vs_cpu_turn(board)
end

def cpu_vs_cpu(board)
  puts
  puts
  puts
  puts
  puts
  puts
  puts "CPU VS CPU MODE"
  puts "                            ,--.    ,--.
                           ((O ))--((O ))
                         ,'_`--'____`--'_`.
                        _:  ____________  :_
                       | | ||::::::::::|| | |
                       |_| |/__________ | |_|
                         |________________|
                      __..-'            `-..__
                   .-| : .----------------. : |-.
                 ,  || | | ______________/| | ||  .
                 `. :| | ||  __  __  __  || | |; ,'
               :`-._ ;.| || '--''--''--' || |,: _.-':
               |    :  | || .----------. || |  :    |
               :,--.;  | ||  (_) (_) (_) || |  :,--.;
               (`-'|)  | ||______________|| |  (|`-')
                `--'   | |/______________ | |   `--'
                       |____________________|
                        `.________________,'
                         (_______)(_______)
                        |        ||        |
                        '--------''--------'  "
    sleep(2)
    puts"

















    "
    cpu_vs_cpu_turn(board)
end

def cpu_vs_cpu_turn(board)
  puts
  puts
  puts
  puts
  sleep(2)
  print_board(board)
  choose_cpu2_move(board)
  puts
  puts
  puts
  puts
  sleep(2)
  print_board(board)
  choose_cpu3_move(board)
  puts
  puts
  puts
  puts
  sleep(2)
  print_board(board)
  choose_cpu2_move(board)
  puts
  puts
  puts
  puts
  sleep(2)
  print_board(board)
  choose_cpu3_move(board)
  puts
  puts
  puts
  puts
  sleep(2)
  print_board(board)
  choose_cpu2_move(board)
  puts
  puts
  puts
  puts
  sleep(2)
  print_board(board)
  choose_cpu3_move(board)
  puts"


  "
  sleep(2)
  print_board(board)
  choose_cpu2_move(board)
  puts"


  "
  sleep(2)
  print_board(board)
  choose_cpu3_move(board)
  puts
  puts
  puts
  puts
  sleep(2)
  print_board(board)
  choose_cpu2_move(board)
  print_board(board)
end


def print_board(board)
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
  puts "                       #{board[0]}  |  #{board[1]}  |  #{board[2]}  "
  puts "                     -----+-----+-----"
  puts "                       #{board[3]}  |  #{board[4]}  |  #{board[5]} "
  puts "                     -----+-----+-----"
  puts "                       #{board[6]}  |  #{board[7]}  |  #{board[8]} "
  puts "                          +     +     "
  puts
  puts
end


def player_vs_player(board)
  print_board(board)
  puts
  puts "Player one, you're X's"
  puts "Make your move:"
  puts
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
  puts
  puts "Player two, you're O's"
  puts "Make your move:"
  puts
  player_two_move = gets.chomp.to_s
  if player_two_move == "1"
    board[0] = "O"
    print_board(board)
    check(board)
    player_vs_player(board)
  elsif player_two_move == "2"
    board[1] = "O"
    print_board(board)
    check(board)
    player_vs_player(board)
  elsif player_two_move == "3"
    board[2] = "O"
    print_board(board)
    check(board)
    player_vs_player(board)
  elsif player_two_move == "4"
    board[3] = "O"
    print_board(board)
    check(board)
    player_vs_player(board)
  elsif player_two_move == "5"
    board[4] = "O"
    print_board(board)
    check(board)
    player_vs_player(board)
  elsif player_two_move == "6"
    board[5] = "O"
    print_board(board)
    check(board)
    player_vs_player(board)
  elsif player_two_move == "7"
    board[6] = "O"
    print_board(board)
    check(board)
    player_vs_player(board)
  elsif player_two_move == "8"
    board[7] = "O"
    print_board(board)
    check(board)
    player_vs_player(board)
  elsif player_two_move == "9"
    board[8] = "O"
    print_board(board)
    check(board)
    player_vs_player(board)
  else
    puts "Please select a number between 1 and 9"
    player_two_turn(board)
  end
end


def player1_vs_cpu_turn (board)
  print_board(board)
  puts
  puts "You're X's"
  puts "Make your move:"
  puts
  player1_vs_cpu_move = gets.chomp.to_s
  if player1_vs_cpu_move == "1"
    board[0] = "X"
    print_board(board)
    check(board)
    choose_cpu_move(board)
  elsif player1_vs_cpu_move == "2"
    board[1] = "X"
    print_board(board)
    check(board)
    choose_cpu_move(board)
  elsif player1_vs_cpu_move == "3"
    board[2] = "X"
    print_board(board)
    check(board)
    choose_cpu_move(board)
  elsif player1_vs_cpu_move == "4"
    board[3] = "X"
    print_board(board)
    check(board)
    choose_cpu_move(board)
  elsif player1_vs_cpu_move == "5"
    board[4] = "X"
    print_board(board)
    check(board)
    choose_cpu_move(board)
  elsif player1_vs_cpu_move == "6"
    board[5] = "X"
    print_board(board)
    check(board)
    choose_cpu_move(board)
  elsif player1_vs_cpu_move == "7"
    board[6] = "X"
    print_board(board)
    check(board)
    choose_cpu_move(board)
  elsif player1_vs_cpu_move == "8"
    board[7] = "X"
    print_board(board)
    check(board)
    choose_cpu_move(board)
  elsif player1_vs_cpu_move == "9"
    board[8] = "X"
    print_board(board)
    check(board)
    choose_cpu_move(board)
  else
    puts "Please select a number between 1 and 9"
    player1_vs_cpu_turn(board)
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

def choose_cpu_move(board)
  puts
  puts
  puts
  puts "CPU MOVE:"
  sleep(2)
   available = board.map{|x| x.to_i}.reject {|x| x.zero?}
   board[available.sample-1]="O"
   player1_vs_cpu_turn(board)
end

def choose_cpu2_move(board)
  puts
  puts
  puts
  puts "CPU MOVE:"
  puts
  sleep(2)
   available = board.map{|x| x.to_i}.reject {|x| x.zero?}
   board[available.sample-1]="X"
   print_board(board)
   check(board)
   choose_cpu3_move(board)
end
def choose_cpu3_move(board)
  puts
  puts
  puts
  puts "CPU 2 MOVE:"
  puts
  sleep(2)
   available = board.map{|x| x.to_i}.reject {|x| x.zero?}
   board[available.sample-1]="O"
   print_board(board)
   check(board)
   choose_cpu2_move(board)

end


greeting(board)
binding.pry
