require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) do
    User.create(github_name: "whithub", uid: 1 )
  end

  it 'requires a github_name' do
    is_expected.to validate_presence_of(:github_name)
  end

  it 'requires a uid that is also unique' do
    is_expected.to validate_presence_of(:uid)
    is_expected.to validate_uniqueness_of(:uid)
  end

  it 'requires to choose at least one language ' do
    user.languages.each do |language|
      language.destroy
    end
    expect(user).to_not be_valid
  end

  it "can't have an about me more than 500 characters" do
    user.about_me = "Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                     Nam viverra euismod odio, gravida pellentesque urna varius
                     vitae. Sed dui lorem, adipiscing in adipiscing et, interdum
                     nec metus. Mauris ultricies, justo eu convallis placerat,
                     felis enim. Lorem ipsum dolor sit amet, consectetur
                     adipiscing elit. Nam viverra euismod odio, gravida
                     pellentesque urna varius vitae. Sed dui lorem, adipiscing
                     in adipiscing et, interdum nec metus. Mauris ultricies,
                     justo eu convallis placerat, felis enim."

    expect(user).to_not be_valid
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
    }.to change(User, :count).from(7).to(8)  #there are 7 users created for test suite
  end
end
