require_relative "../war"

describe War do 
	let(:war) {War.new}
	let(:war_hand) {war.draw_two}

	it "creates a new game" do 
		expect(war.create_game.deck.length).to eq(52)
	end

	it "draws two cards" do 
		war.draw_two
		expect(war.hand.length).to eq(2)
	end

	it "shows the user his/her card" do 
		expect(war_hand.show_card).to be_a(String)
	end

	it "declares a winner" do 
		expect(war_hand.winner).to be_a(String)
	end

	it "clean it's own hand" do 
		expect(war_hand.clear_hand).to eq([])
	end

	it "tell you the score" do 
		war_hand.winner
		expect(war_hand.score).to be_a(String)
	end

	it "tell you if the deck is not empty" do
		expect(war_hand.cards?).to be_falsey
	end

	it "tell you the deck is empty" do 
		26.times{war.draw_two}
		expect(war.cards?).to be_truthy
	end
end

#Here's where I really ran into some difficulties, with all the randomization of the shuffle method, a lot of what I tested was based on if it printed out a string, which doesn't feel right