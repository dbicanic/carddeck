class Card
	include Comparable
	attr_reader :rank, :suit

	def initialize(rank, suit)
		@rank = rank
		@suit = suit
	end

	def face_converter
		case self.rank
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

	def <=>(other)
		self.rank <=> other.rank
	end
end
