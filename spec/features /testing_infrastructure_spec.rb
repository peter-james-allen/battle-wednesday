feature "testing infrastructure" do
  scenario "runs app and check page content" do
    visit '/'
    expect(page).to have_content 'Prepare for battle!'
  end
end

feature "enter player names" do
  scenario "returns entered names on the screen" do
    sign_in_and_play
    expect(page).to have_content "The next fight is between Ian and Joey"
  end
end

feature "displays hit points" do
  scenario "play page shows player 2 hitpoints" do
    sign_in_and_play
    expect(page).to have_content "Joey HP: 100/100"
  end
end
