feature 'checking the play interface' do

  scenario "players can see starting HP" do
    sign_in_and_play
    expect(page).to have_content "SuperHans HP: 50"
    expect(page).to have_content "Darth Vader HP: 50"
  end

end