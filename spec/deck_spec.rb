require_relative "../deck"

describe Deck do 
	let(:deck) {Deck.new}
	let(:ace_card) {Card.new(14, "Diamonds")}

	it "should have 52 cards" do 
		expect(deck.create.length).to eq 52
	end

	it "contains a card object" do 
		expect(deck.deck).to include(ace_card)
	end

end