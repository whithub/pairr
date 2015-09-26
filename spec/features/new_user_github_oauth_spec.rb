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

    it "when I first login, and submit the add'l info, I should be taken to my dashboard" do
      visit '/'
      auth_mock
      click_on "Login with Github"

      #select languages, check checkboxes
      fill_in "user_about_me", with: "I'm a catch."
      click_on "Let's Get Pairing"

      expect(page).to have_content("Hello, whithub")
      expect(current_path).to eq(dashboard_path)
    end
  end
end

