feature 'attacking' do
  scenario "player 1 attacks player 2 and gets confirmation" do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "SuperHans attacks Darth Vader and deals 10 damage"
    expect(page).to have_content "Darth Vader's HP: 40"
  end

  scenario 'player 2 is able to attack after player 1 has made his move' do
    sign_in_and_play
    click_button('Attack')
    click_button('OK')
    click_button('Attack')
    expect(page).to have_content "Darth Vader attacks SuperHans and deals 10 damage"
    expect(page).to have_content "SuperHans's HP: 40"
  end
end