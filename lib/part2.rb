class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2

  p1Choice = game[0][1].downcase
  p2Choice = game[1][1].downcase

  raise NoSuchStrategyError unless p1Choice == "r" or p1Choice == "p" or p1Choice == "s"
  raise NoSuchStrategyError unless p2Choice == "r" or p2Choice == "p" or p2Choice == "s"

  if p1Choice == "r"
    case p2Choice
    when "r"
      return game[0]
    when "p"
      return game[1]
    when "s"
      return game[0]
    end
  elsif p1Choice == "p"
    case p2Choice
    when "r"
      return game[0]
    when "p"
      return game[0]
    when "s"
      return game[1]
    end
  else # p1Choice == "s"
    case p2Choice
    when "r"
      return  game[1]
    when "p"
      return game[0]
    when "s"
      return game[0]
    end
  end  
end

def rps_tournament_winner(tournament)
  # YOUR CODE HERE
end

#feel free to add your own helper functions as needed
