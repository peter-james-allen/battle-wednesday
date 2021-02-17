require 'app'
feature "testing infrastructure" do
  scenario "runs app and check page content" do
    visit '/'
    expect(page).to have_content 'Testing infrastructure'
  end
end

feature "enter player names" do
  scenario "returns entered names on the screen" do
    visit '/'
    fill_in('Player 1 Name', with: 'Ian')
    fill_in('Player 2 Name', with: 'Anna')
    click_button('Submit')
    expect(page).to have_content "Ian vs Anna"
  end
end
