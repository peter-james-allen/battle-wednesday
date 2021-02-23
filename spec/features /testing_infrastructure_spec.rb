feature "testing infrastructure" do
  scenario "runs app and check page content" do
    visit '/'
    expect(page).to have_content 'Prepare for battle!'
  end
end

feature "enter player names" do
  scenario "returns entered names on the screen" do
    sign_in_and_play
    expect(page).to have_content "This fight is between Ian and Joey"
  end
end

feature "displays hit points" do
  scenario "play page shows player 2 hitpoints" do
    sign_in_and_play
    expect(page).to have_content "Joey HP: 100/100"
  end

feature "attacking move" do
  scenario "when attack is clicked, attack message appears" do
    sign_in_and_play
    click_button("Player 1 Attack!")
    expect(page).to have_content "Ian attacked Joey!"
  end

  scenario "player 1 attacks player 2 reducing player 2 HP by 10" do
    sign_in_and_play
    click_button("Player 1 Attack!")
    expect(page).to have_content "Joey HP: 90/100"
  end
end

end
