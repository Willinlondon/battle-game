feature 'attacking' do
  scenario "player 1 attacks player 2 and gets confirmation" do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "SuperHans attacks Darth Vader and deals 10 damage"
    expect(page).to have_content "Darth Vader HP: 40"
  end
end