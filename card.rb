class Card 
	include Comparable
	attr_reader :rank, :suit, :pretty

	def initialize(rank, suit)
		@rank = rank
		@suit = suit
	end

	#This method coverts the number into it's proper rank
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

	#Using the rocketship to make a compare function
	def <=>(other)
		self.rank <=> other.rank
	end

	#Prints out a better looking value to the user
	def pretty_converter
		self.face_converter
		return "#{@rank.to_s} of #{@suit}"
	end
end
