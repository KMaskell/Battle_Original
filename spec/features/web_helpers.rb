def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Ophelia'
  fill_in :player_2_name, with: 'Mercedes'
  click_button 'Submit'
end
