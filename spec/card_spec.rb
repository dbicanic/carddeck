require_relative "../card"

describe Card do 
	let(:two_card) {Card.new(2, "Spade")}
	let(:ace_card) {Card.new(14, "Diamond")}
	it "has a rank of 2" do 
		expect(two_card.rank).to eq 2
	end

	it "has a suit of Spade" do 
		expect(two_card.suit).to eq "Spade"
	end

	it "has a rank of Ace" do 
		expect(ace_card.rank).to eq "Ace"
	end
end