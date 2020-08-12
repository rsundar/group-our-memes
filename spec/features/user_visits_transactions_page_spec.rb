require 'rails_helper'

feature 'user visits All My Transactions page' do
  scenario 'user can see all of their created transactions' do
    user = FactoryBot.create(:user, username: "username1")
    login_as(user)
    group = FactoryBot.create(:groups)
    transaction = FactoryBot.create(:transactions, group_id: group.id)

    visit root_path

    click_button 'All My Transactions'

    expect(page).to have_content "Transactions"
  end
end