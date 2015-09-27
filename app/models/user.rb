class User < ActiveRecord::Base
  has_friendship

  has_many :user_languages
  has_many :languages, through: :user_languages

  has_many :matches
  has_many :matchees, through: :matches

  validates :uid, presence: true, uniqueness: true
  validates :github_name, presence: true
  validate  :chose_at_least_one_language, on: :update

  def self.from_omniauth(auth_info)
    if user = find_by(provider: auth_info.provider, uid: auth_info.uid)
      user
    else
      create!({
          uid:                auth_info.uid,
          provider:           auth_info.provider,
          github_name:        auth_info.info.nickname,
          email:              auth_info.info.email,
          image_url:          auth_info.info.image,
          oauth_token:        auth_info.credentials.token,
          oauth_token_secret: auth_info.credentials.secret
        })
    end
  end

  private

  def chose_at_least_one_language
    if self.languages.empty?
      errors.add(:languages, "Must select at least one language.")
    end
  end

end



#Ummm ... Why are you here if you're not interested in any programming languages? Must select at least one language.
