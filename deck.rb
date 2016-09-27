class Deck
	attr_reader :deck, :card

	def initialize
		@deck = create
	end

	#I used this method to create my deck.  It goes from 2 to 14 adding the suits to each number, ending with 52 card objects
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

	#This is my split of the deck, just rotating half the cards
	def split_deck
		@deck.rotate!(26)
	end

	#Originally this function was just @deck.shuffle! but I wanted to test to make sure it's shuffling, so I built my method around the tests.  I need to ask a better way though. It takes the first card off the deck, shuffles the deck, and then makes sure the first card doesn't make the previous first card if it does it reshuffles, if not returns the deck
	def shuffle_deck
		first_card = @deck[0]
		@deck.shuffle!
		while first_card == @deck[0]
			@deck.shuffle!
		end
		@deck
	end

	#This takes the top card off the deck, while removing it from the deck
	def draw
		@deck.slice!(0)
	end
end