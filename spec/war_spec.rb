require_relative "../war"

describe War do 
	let(:war) {War.new}
	let(:game) {war.create_game}

	it "creates a new game" do 
		expect(war.create_game.length).to eq(52)
	end

	it "draws two cards" do 
		war.draw_two
		expect(war.game.length).to eq(2)
	end

	# it "shows the user his/her card" do 
	# end

	# it "declares a winner" do 
	# end
end