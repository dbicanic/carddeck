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
		@deck
	end

end