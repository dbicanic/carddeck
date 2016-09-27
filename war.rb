class War
	attr_reader :hand, :deck

	def initialize
		@hand = [] 
		@deck = create_game
		@player1 = 0
		@player2 = 0
	end 

	#This creates a deck, splits it, then shuffles it
	def create_game
		Deck.new.tap do |deck|
		  deck.split_deck
		  deck.shuffle_deck
		end
	end

	#Here we draw 2 cards, one for the user, one for the computer
	def draw_two
		clear_hand
		2.times do 
			@hand << @deck.draw
		end
		self 
	end

	#Show card returns what cards were drawn so the user can see it
	def show_card
		player1 = @hand[0].pretty_converter
		player2 = @hand[1].pretty_converter
		"Your card was #{player1}, and the computers card was #{player2}"
	end

	#Tells us who the winner was, while adding one to the players score
	def winner
		if @hand[0] > (@hand[1])
			@player1+=1
			"You won the game of war!"
		elsif @hand[0] < (@hand[1])
			@player2+=1
			"You lost the game of war!"
		else
			"You are in a stale mate with your enemy!"
		end
	end

	#Simply prints out the user score, and who won the overal war
	def score
		if @player1 > @player2
			"You win #{@player1} to #{@player2}!"
		elsif @player1 < @player2
			"You lost #{@player1} to #{@player2}!"
		else
			"You tied at #{@player1}!"
		end
	end

	#clears the hand so we can replay if we wish
	def clear_hand
		@hand = []
	end

	#this checks to see if there are any cards left in the deck, I put this here rather than the Deck class, because I felt it kept the runner cleaner
	def cards?
		@deck.deck.empty?
	end
end