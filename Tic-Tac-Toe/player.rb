class Player
  def initialize
    def get_name
      puts "Whats your name player 1 ? :"
      @name = gets.chomp
    end
  end
  def hello_player
    puts "Hello #{@name}!"
  end

  def hello_player_vs_cpu(name_of_player)
    puts "Hello #{name_of_player}! Good luck!"
  end
  def player_vs_player
    player1_name = get_name
    player2_name = get_name

    hello_player(player1_name)
    hello_player(player2_name)
  end

  def player_vs_cpu
    player1_name = get_name
    hello_player_vs_cpu(player1_name)
  end
end

run = Player.new
run.get_name
