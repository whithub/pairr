require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) do
    user = User.create(github_name: "whithub", uid: 1)
  end

  it 'requires a name' do
    is_expected.to validate_presence_of(:github_name)
  end

  it 'requires a uid that is also unique' do
    is_expected.to validate_presence_of(:uid)
    is_expected.to validate_uniqueness_of(:uid)
  end

  it 'can find a user from omniauth' do
    auth_hash = OmniAuth::AuthHash.new({
        provider: 'github',
        uid: '1234',
        info: { nickname: 'whithub',
          email: 'whit@example.com',
          image: 'mock_user_thumbnail_url' },
        credentials: { token: 'token',
          secret: 'secrettoken'}
      })
    expect {
      User.from_omniauth(auth_hash)
    }.to change(User, :count).from(0).to(1)
  end
end
