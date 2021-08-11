feature 'enter names' do
    scenario "player inputs a name and expects the name to appear on screen" do
        visit("/")
        fill_in('Player1', with: 'SuperHans')
        fill_in('Player2', with: 'Darth Vader')
        click_button('Submit')
        expect(page).to have_content 'SuperHans v Darth Vader'
    end
end
