require 'app'
feature "testing infrastructure" do 
  scenario "runs app and check page content" do
    visit '/'
    expect(page).to have_content 'Testing infrastructure'
  end
end 