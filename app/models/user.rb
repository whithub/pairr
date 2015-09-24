class User < ActiveRecord::Base

  validates :uid, presence: true, uniqueness: true
  validates :github_name, presence: true

  def self.from_omniauth(auth_info)
    if user = find_by(provider: auth_info.provider, uid: auth_info.uid)
      user
    else
      create({
          uid:                auth_info.uid,
          github_name:        auth_info.info.nickname,
          email:              auth_info.info.email,
          image_url:          auth_info.info.image,
          oauth_token:        auth_info.credentials.token,
          oauth_token_secret: auth_info.credentials.secret
        })
    end
  end

end
