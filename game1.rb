# Play a guessing game! 
class Game
  def initialize
    @number = 1 + rand(100)
    @guesses = 0
    @win = false
    @guessmax = 10
  end

  def ask
    guess_num = gets.to_i
    guess_num
  end

  def round
    guess = ask
    if guess == @number
      puts "That's right!"
      @win = true
    elsif guess < @number
      puts "Too low!"
    elsif guess > @number
      puts "Too high!"
    else
      puts "You shouldn't be able to see this!"
    end
    @guesses += 1
  end

  def play
    puts "Guess a number between 1 and 100."
    while @guesses < @guessmax && @win == false
      round
      puts "Guess again." if @win == false && @guesses < @guessmax
    end
    if @win 
      puts "A winner is you!"
    else
      puts "Out of guesses!"
    end
  end
end

game = Game.new
game.play # or Game.new.play? 
