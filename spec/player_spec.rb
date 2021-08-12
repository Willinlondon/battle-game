require 'player.rb'

describe Player do
    subject(:player_1) {Player.new("SuperHans")}
    subject(:player_2) {Player.new("Darth Vader")}
    it "checks a player can be named" do
        expect(player_2.name).to eq("Darth Vader")
    end
    it "checks the Hit Points of the player" do
        expect(player_1.hp).to eq 50
    end
    it "checks if players can attack" do
      player_1.attack(player_2)
      expect(player_2.hp).to eq 40
    end

end