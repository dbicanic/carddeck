require_relative "../deck"

describe Deck do 
	let(:deck) {Deck.new}

	it "should have 52 cards" do 
		expect(deck.length).to eq 52
	end
end