class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def play()
    if @player1 == @player2
      result = "It's a tie! You're both losers!"

    elsif @player1 == "rock"
      if @player2 == "scissors"
        result = "Rock crushes scissors! Player 1 wins!"
      elsif @player2 == "paper"
        result = "Paper covers rock! Player 2 wins!"
      end

    elsif @player1 == "scissors"
      if @player2 == "rock"
        result = "Rock crushes scissors! Player 2 wins!"
      elsif @player2 == "paper"
        result = "Scissors cuts paper! Player 1 wins!"
      end

    elsif @player1 == "paper"
      if @player2 == "scissors"
        result = "Scissors cuts paper! Player 2 wins!"
      elsif @player2 == "rock"
        result = "Paper covers rock! Player 1 wins!"
      end
    end
    return result
  end

end
