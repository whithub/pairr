require "rails_helper"

describe 'testing oauth with github', :omniauth, type: :feature do

  it "logs in successfully" do
    auth_mock
    visit '/auth/github'

    expect(current_path).to eq(dashboard_path)
  end

  it "handles invalid authentication" do
    OmniAuth.config.mock_auth[:github] = :invalid_credentials
    visit '/auth/github'

    expect(page).to have_content("Login")
  end

  it "logs out successfully" do
    auth_mock
    visit '/auth/github'
    expect(page).to have_content("Logout")

    click_on 'Logout'
    expect(page).to have_content("Login")
  end
end
