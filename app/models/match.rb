class Match < ActiveRecord::Base
  belongs_to :user
  belongs_to :user, foreign_key: 'matchee_id'


end
