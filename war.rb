class War
	attr_reader :hand, :deck

	def initialize
		@hand = [] 
		@deck = create_game
		@player1 = 0
		@player2 = 0
	end 

	def create_game
		Deck.new.tap do |deck|
		  deck.split_deck
		  deck.shuffle_deck
		end
	end

	def draw_two
		2.times do 
			@hand << @deck.draw
		end
		self 
	end

	def show_card
		player1 = @hand[0].pretty_converter
		player2 = @hand[1].pretty_converter
		"Your card was #{player1}, and the computers card was #{player2}"
	end

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

	def score
		if @player1 > @player2
			"You win #{@player1} to #{@player2}!"
		elsif @player1 < @player2
			"You lost #{@player1} to #{@player2}!"
		else
			"You tied at #{@player1}!"
		end
	end

	def clear_hand
		@hand = []
	end

	def cards?
		@deck.deck.empty?
	end
end