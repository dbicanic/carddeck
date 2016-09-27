class War
	attr_reader :hand, :deck

	def initialize
		@hand = [] 
		@deck = create_game
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
		pretty = @hand[0].pretty_converter
		"Your card is #{pretty}"
	end

	def winner
		case @hand[0] > (@hand[1])
		when true
			"You won the war!"
		when false
			"You lost the war!"
		end
	end
end