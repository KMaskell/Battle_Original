feature 'Attacking' do
    scenario 'attack Player 2' do
        sign_in_and_play
        click_link 'Attack'
        expect(page).to have_content 'Ophelia attacked Mercedes'
    end

    scenario 'reduce Player 2 HP by 10' do
      sign_in_and_play
      click_link 'Attack'
      #click_link 'OK'
      expect(page).not_to have_content 'Mercedes: 60HP'
      expect(page).to have_content 'Mercedes: 50HP'
    end
end