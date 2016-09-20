require_relative "../card"

describe Card do 
	let(:card) {Card.new(rank: 2, suit: "Spade")}

	it "has a rank of 2" do
		expect(card.rank).to eq 2
	end

	it "has a suit of Spade" do 
		expect(card.suit).to eq "Spade"
	end
end