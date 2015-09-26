require "rails_helper"

describe 'testing oauth with github,', :omniauth, type: :feature do
  context "as a brand new user," do

    it 'when I first login, I should be directed to a page to a second "User Information" screen, and prompted to enter further information' do
      visit '/'
      auth_mock
      click_on "Login with Github"
      expect(page).to have_content("Welcome to Pairr!")
      expect(page).to have_content("We just a need a little bit more information to get your account set up.")
      # expect(current_path).to eq(edit_user_path)
    end

    xit "when I first login, and submit the add'l info, I should be taken to my dashboard" do
      visit '/'
      auth_mock
      click_on "Login with Github"

      #select languages, check checkboxes
      fill_in "About Me", with: "I'm a catch."
      click_on "Let's Get Pairing!"

      expect(page).to have_content("Hello, whithub")
      expect(current_path).to eq(dashboard_path)
    end

  end

  context "as a previously signed in user," do
    it "when I login for second or more times w/ valid login info, I should be taken directly to my dashboard" do
      auth_mock
      visit '/auth/github'

      expect(current_path).to eq(dashboard_path)
    end

    it "handles invalid authentication" do
      OmniAuth.config.mock_auth[:github] = :invalid_credentials
      visit '/auth/github'

      expect(page).to have_content("Login")
    end
  end


  it "logs out successfully" do
    auth_mock
    visit '/auth/github'
    expect(page).to have_content("Logout")

    click_on 'Logout'
    expect(page).to have_content("Login")
  end
end
