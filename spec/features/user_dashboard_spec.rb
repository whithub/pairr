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
      expect(page).to have_text("whithub")
    end

    it "displays a button inviting them to 'Find Pairs'." do
      expect(page).to have_button("Find Pairs")
    end

    it "and click on Find Pairs button,
        should take user to a new screen,
        where they will be shown potential pairs,
        and invited to match with them or not." do

      click_on "Find Pairs"

      expect(current_path).to eq("")
      expect(page).to have_button("Find Pairs!")
    end
  end
end
