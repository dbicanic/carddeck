class War
	attr_reader :game, :deck

	def initialize
		@game = []
		@deck = Deck.new
	end 

	def create_game
		@deck = Deck.new
		@deck.split_deck
		@deck.shuffle_deck
	end

	def draw_two
		@game
	end
end