require 'rails_helper' # rubocop:todo Layout/EndOfLine

feature 'user visits homepage' do
  scenario 'user is unauthenticated' do
    visit root_path

    expect(page).to have_content 'Log In'
  end

  scenario 'user is logged in' do
    user = FactoryBot.create(:user, username: 'username')

    login_as(user)
    visit root_path

    expect(page).to have_content user.username.to_s
  end
end
