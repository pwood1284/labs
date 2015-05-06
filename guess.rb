random_num = rand(1...100)

puts "Pick a number between 1 and 100"

num_guess = gets.chomp.to_i

while num_guess != random_num

  if num_guess > random_num
    puts "Your guess was too high. Try again."

  else
    puts "Your guess was too low. Try again."

  end


num_guess = gets.chomp.to_i

end

puts "Wow! Great guess! " + random_num + " is correct!"
