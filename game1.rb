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
    else
      puts "Too high!"
    end
    @guesses += 1
  end

  def continue
    @guesses < @guessmax && @win == false
  end

  def play
    puts "Guess a number between 1 and 100."
    while continue
      round
      puts "Guess again." if continue
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
