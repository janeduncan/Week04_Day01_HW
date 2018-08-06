class Game

  def initialize(hand1, hand2)
    @hand1 = hand1
    @hand2 = hand2
  end

  def play()
    if @hand1 == @hand2
      result = "It's a tie! You're both losers!"

    elsif @hand1 == "rock"
      if @hand2 == "scissors"
        result = "Rock crushes scissors! Player 1 wins!"
      elsif @hand2 == "paper"
        result = "Paper covers rock! Player 2 wins!"
      end

    elsif @hand1 == "scissors"
      if @hand2 == "rock"
        result = "Rock crushes scissors! Player 2 wins!"
      elsif @hand2 == "paper"
        result = "Scissors cuts paper! Player 1 wins!"
      end

    elsif @hand1 == "paper"
      if @hand2 == "scissors"
        result = "Scissors cuts paper! Player 2 wins!"
      elsif @hand2 == "rock"
        result = "Paper covers rock! Player 1 wins!"
      end
    end
    return result
  end

end
