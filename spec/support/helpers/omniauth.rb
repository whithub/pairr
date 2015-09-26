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
    def first_time_user_signin
      visit root_path
      auth_mock
      click_on "Login with Github"
    end

    def previous_user_signin
      visit root_path
      auth_mock
      click_on "Login with Github"
      find(:css, "#user_language_ids_1").set(true)
      find(:css, "#user_language_ids_4").set(true)
      fill_in "user_about_me", with: "I'm a catch."
      click_on "Let's Get Pairing"
    end
  end

end
