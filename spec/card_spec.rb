require_relative "../card"

describe Card do 
	let(:two_card) {Card.new(2, "Spades")}
	let(:ace_card) {Card.new(14, "Diamonds")}
	it "has a rank of 2" do 
		expect(two_card.rank).to eq 2
	end

	it "has a suit of Spade" do 
		expect(two_card.suit).to eq "Spades"
	end

	it "has a rank of Ace" do 
		expect(ace_card.face_converter).to eq "Ace"
	end

	it "compares and returns Ace as higher than 2" do 
		expect(ace_card > (two_card)).to be true
	end

	it "prints out a pretty description for ace" do 
		expect(ace_card.pretty_converter).to eq "Ace of Diamonds"
	end

	it "prints out a pretty decription for the two" do 
		expect(two_card.pretty_converter).to eq "2 of Spades"
	end
end

#Didn't really have any challenges here, all pretty straight forward