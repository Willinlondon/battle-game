feature 'display HP' do
  scenario "players can see starting HP" do
      visit("/play")
      expect(page).to have_content "Player 1 HP: 50"
      expect(page).to have_content "Player 2 HP: 50"
  end
end