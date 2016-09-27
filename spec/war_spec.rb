require_relative "../war"

describe War do 
	let(:war) {War.new}
	let(:war_hand) {war.draw_two}

	it "creates a new game" do 
		expect(war.create_game.deck.length).to eq(52)
	end

	it "draws two cards" do 
		expect(war.draw_two.length).to eq(2)
	end

	it "shows the user his/her card" do 
		expect(war.show_card).to be_a(String)
	end

	# it "declares a winner" do 
	# end
end