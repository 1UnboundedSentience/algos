def guessing_game
  print "Welcome to the Numbers Guessing Game. What is your name?"
  name = gets.chomp.capitalize
  puts "Welcome, #{name}."
  loop do
    secret_number = 1 + rand(99)
    num_guesses = 0
    puts "I'm thinking of a number from 1-100.
    What is your guess?"
    history = []
    loop do
     #User guesses and restrictions
     user_guess = gets.chomp.to_i
     if history.include? user_guess
       puts "Already answered"
       next
     else
       history.push user_guess
       num_guesses += 1
     end
     #Messages
     if (user_guess == secret_number)
       puts "You're correct! The secret number is #{secret_number}. It took you #{num_guesses} guesses to get it correct."
       break
     elsif (user_guess > secret_number)
       puts "Too high. Try again."
     else
       puts "Too low. Try again."
     end
    end
    puts "Would you like to play again? (yes/no)"
    answer = gets.chomp.capitalize
    if (answer == "No")
      puts "Thank you for playing, #{name}."
      break
    end
   end
end

guessing_game