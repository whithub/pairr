module Omniauth

  module Mock
    def auth_mock
      OmniAuth.config.mock_auth[:github] = OmniAuth::AuthHash.new({
          provider: 'github',
          uid: '1234',
          info: {
            nickname: 'whithub',
            email: 'whit@example.com',
            image: 'mock_user_thumbnail_url'
          },
          credentials: {
            token: 'mock_token',
            secret: 'mock_secret'
          }
        })
    end
  end

  module SessionHelpers
    def signin
      visit root_path
      expect(page).to have_content("Login with Github")
      auth_mock
      click_on "Login with Github"
    end
  end

end
