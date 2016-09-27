require_relative "war"
require_relative "deck"
require_relative "card"

puts "This is the Game War.  The concept is simple, you and the computer will draw cards. Whom ever has the highest card wins. Let's begin"
war = War.new
answer = ""
until answer == "no" do 
	war.clear_hand
	war.draw_two
	puts "#{war.winner}"
	puts "#{war.show_card}"
	break if war.cards?
	puts "Would you like to play again?(yes/no)"
	answer = gets.chomp
end
puts war.score
puts "Thanks for playing!"