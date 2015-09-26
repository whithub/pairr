require 'rails_helper'

describe 'User dashboard', :omniauth, type: :feature do

  it 'blocks me from viewing if not logged in' do
    visit dashboard_path

    expect(page).to have_text('You must be logged in to perform this action.')
    expect(current_path).to eql(root_path)
  end

  context 'when authenticated' do
    before(:each) do
      previous_user_signin
      visit dashboard_path
    end

    it 'shows my dashboard page' do
      expect(page).to have_text("Hello, whithub")
    end


  end
end
