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

	it "should be able to split itself" do 
		expect(deck.deck[0]).to eq(deck.split_deck[26])
	end

	it "should shuffle deck" do 
		expect(deck.deck[0]).to_not eq(deck.shuffle_deck[0]) 
	end

	it "draw a card" do
		expect(deck.draw).to be_a(Card)
	end
end

#Tests began to get more tricky here, especially with the shuffle function, I worked around it in my method, but it still feels messy