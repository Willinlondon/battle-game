feature 'checking the turn swap' do
    context 'seeing the current turn' do
        scenario 'at the start of the game' do
            sign_in_and_play
            expect(page).to have_content "SuperHans's move!"
        end

        scenario 'after player 1 has made their first attack' do
            sign_in_and_play
            click_button 'Attack'
            click_button 'OK'
            expect(page).to have_content "Darth Vader's move!"
            expect(page).not_to have_content "SuperHans's move!"
        end
    end
end
