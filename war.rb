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
		@hand
	end

	def show_card

	end
end