describe 'View hit points' do
  it 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content "Tom Cruise: 60HP"
  end
end
