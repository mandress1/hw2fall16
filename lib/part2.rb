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
  finals = []
  tournament.each do |el|
    p el
    puts "#{el[0][0]} string: #{el[0][0].is_a?(String)}| #{el[0]} array: #{el[0].is_a?(Array)}"
    puts "\n"

    exit() if (el[0][0].is_a?(String) and el[0].is_a?(Array))

    if (el[0].is_a?(String) and el[1].is_a?(String))
      puts el
      return el
    elsif (el[0][0].is_a?(String) and el[0].is_a?(Array))
      puts "V: #{el}"
      winner = rps_game_winner(el)
      puts "Win #{winner}"
      return winner
    else
      puts "el0: #{el[0]}\n el1: #{el[1]}"
      puts "\n"
      down1 = rps_tournament_winner(el[0])
      down2 = rps_tournament_winner(el[1])

      finals.push(rps_tournament_winner([down1, down2]))
    end
  end
  puts "#{finals}"
  return rps_game_winner(finals)
end

#feel free to add your own helper functions as needed
