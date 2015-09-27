class Match < ActiveRecord::Base
  belongs_to :user
  belongs_to :matchee, class_name: "User"

  enum status: %w(potential rejected pending matched)

  # scope :potential, -> { where(status: 0) }
  # scope :rejected,  -> { where(status: 1) }
  # scope :pending,   -> { where(status: 2) }
  # scope :matched,   -> { where(status: 3) }

  include AASM
  aasm column: :status, enum: true do
    state :potential, :initial => true
    state :rejected
    state :pending
    state :matched

    event :initial_match_answer do
      transitions from: :potential, to: :rejected
      transitions from: :potential, to: :pending
      transitions from: :potential, to: :matched
    end

    event :final_match_answer do
      transitions from: :pending, to: :rejected
      transitions from: :pending, to: :matched
    end
  end
end
