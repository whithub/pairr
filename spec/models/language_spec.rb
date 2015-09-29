require 'rails_helper'

RSpec.describe Language, type: :model do

  let(:language) do
    Language.create(name: "JavaScript")
  end

  it 'requires a name' do
    is_expected.to validate_presence_of(:name)
  end


end
