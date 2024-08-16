class MilkFeed < ApplicationRecord
  belongs_to :baby
  belongs_to :handle_by_user, class_name: 'User'

  validates :baby_id, presence: true
  validates :handle_by_user_id, presence: true
  validates :quantity, presence: true
  validates :unit, presence: true

  enum unit: { ml: 1, oz: 2 }
end
