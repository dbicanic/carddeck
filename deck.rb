class Deck
	attr_reader :deck

	def initialize
		@deck = create
	end

	def create
		r = 2
		@deck = []
		until r == 15 do 
			@deck << Card.new(r, "Spades")
			@deck << Card.new(r, "Diamonds")
			@deck << Card.new(r, "Clubs")
			@deck << Card.new(r, "Hearts")
			r += 1
		end
		@deck
	end

	def split
		@deck.rotate!(26)
	end

	def shuffle
		#Originally this function was just @deck.shuffle! but I wanted to test to make sure it's shuffling, so I built my method around the tests.  I need to ask a better way though.
		first_card = @deck[1]
		@deck.shuffle!
		while first_card == @deck[1]
			@deck.shuffle!
		end
		@deck
	end
end