class Card
	attr_reader :rank, :suit

	def initialize(rank, suit)
		@rank = face_converter(rank)
		@suit = suit
	end

	def face_converter(rank)
		case rank
		when 14
			@rank = "Ace"
		when 13
			@rank = "King"
		when 12
			@rank = "Queen"
		when 11 
			@rank = "Jack"
		else
			@rank = rank
		end
	end

end
