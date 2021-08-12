require 'player.rb'

describe Player do
    it "checks a player can be named" do
        player_1 = Player.new("Darth Vader")
        expect(player_1.name).to eq("Darth Vader")
    end
end