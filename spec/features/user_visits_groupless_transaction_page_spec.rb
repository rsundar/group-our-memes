require 'rails_helper' # rubocop:todo Layout/EndOfLine

feature 'user visits groupless transactions page' do
  scenario 'user should be able to see all of their uncategorized transactions' do
    user = FactoryBot.create(:user, username: 'reswre')
    login_as(user)
    groupless_transaction = FactoryBot.create(:transactions, user_id: user.id) # rubocop:todo Lint/UselessAssignment

    visit root_path

    click_button 'All my external transactions'

    expect(page).to have_content 'Groupless Transactions'
  end
end
