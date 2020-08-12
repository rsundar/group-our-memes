require 'rails_helper'

feature "User visits All My Groups page" do
  scenario "the user can see all of their created groups" do
    user = FactoryBot.create(:user, username: "username123")
    login_as(user)

    group = FactoryBot.create(:groups)

    visit root_path

    click_button "All My Groups"

    expect(page).to have_content "Groups"
  end
end