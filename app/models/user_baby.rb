class UserBaby < ApplicationRecord
  belongs_to :user
  belongs_to :baby

  validates :user_id, presence: true
  validates :baby_id, presence: true, uniqueness: { scope: :user_id }
end
