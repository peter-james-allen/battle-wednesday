require 'app'
feature "testing infrastructure" do
  scenario "runs app and check page content" do
    visit '/'
    expect(page).to have_content 'Prepare for battle!'
  end
end

feature "enter player names" do
  scenario "returns entered names on the screen" do
    visit '/'
    fill_in('name1', with: 'Ian')
    fill_in('name2', with: 'Anna')
    click_button('Submit')
    expect(page).to have_content "The next fight is between Ian and Anna"
  end
end
