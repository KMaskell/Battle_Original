def sign_in_and_play
  visit('/')
  fill_in('player_one_name', with: 'Raiden')
  fill_in('player_two_name', with: 'Goro')
  click_button 'Submit'
end
