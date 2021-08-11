feature 'checking the play interface' do
  scenario "players can see starting HP" do
    sign_in_and_play
    expect(page).to have_content "SuperHans HP: 50"
    expect(page).to have_content "Darth Vader HP: 50"
  end
  scenario "player 1 attacks player 2 and gets confirmation" do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "SuperHans attacks Darth Vader and deals 10 damage"
  end

end