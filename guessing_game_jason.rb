class GuessingGame
  def initialize
    # stores state throughout entire class
    @num_guesses = 0
    @history = []
    @secret_number = 1 + rand(99)
    @should_cancel = false
  end

  def run_game
    get_name()
    loop do
      user_entry = prompt_user()
      process_guess(user_entry)
      break if @should_cancel == true
    end
  end

  def get_name
    puts "Welcome to the Numbers Guessing Game. What is your name?"
    name = gets.chomp.capitalize
    puts "Welcome, #{name}."
  end

  def prompt_user
    puts "I'm thinking of a number from 1-100. What is your guess?"
    gets.chomp.to_i #return what the user enters
  end

  def process_guess(user_entry)
    @num_guesses += 1
    if (user_entry == @secret_number)
       puts "You're correct! The secret number is #{@secret_number}. It took you #{@num_guesses} guesses to get it correct."
       @should_cancel = true
    elsif (user_entry > @secret_number)
       puts "Too high. Try again."
    else
       puts "Too low. Try again."
    end
  end

end

#sample game
sample_terminal_game = GuessingGame.new
sample_terminal_game.run_game