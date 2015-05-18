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
