require 'rails_helper'

RSpec.describe Friendship, type: :model do

  let(:matchee) do
    user = User.create!(github_name: "whithub", uid: 1)
  end

end
