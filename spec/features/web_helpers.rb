def sign_in_and_play
  visit('/')
  fill_in [:player_one_name], with: 'Justin Bieber'
  fill_in [:player_two_name], with: 'Tom Cruise'
  click_button 'Submit'
end
