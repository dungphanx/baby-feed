class Baby < ApplicationRecord
  belongs_to :user
  has_many :user_babies, dependent: :destroy
  has_many :users_in_charge, through: :user_babies, source: :user
  has_many :milk_feeds, dependent: :destroy

  validates :name, presence: true
  validates :dob, presence: true

  enum gender: { male: 1, female: 2 }
end
