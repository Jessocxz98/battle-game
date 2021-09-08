feature 'enter names via form' do
  scenario 'submitting names to form' do
    visit('/')
    fill_in :player_1_name, with: 'Jim'
    fill_in :player_2_name, with: 'Rosie'
    click_button 'submit'
    save_and_open_page
    expect(page).to have_content('Jim vs Rosie')
  end
end