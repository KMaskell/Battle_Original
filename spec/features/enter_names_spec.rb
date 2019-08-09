describe 'Enter names' do
  it 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Justin Bieber vs. Tom Cruise'
  end
end
