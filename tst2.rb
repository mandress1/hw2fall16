require "./lib/part2.rb"
require "./lib/testArr.rb"

tst = getTourn

puts "Start tourn: "
p tst

puts "Winner: #{rps_tournament_winner(tst)}"