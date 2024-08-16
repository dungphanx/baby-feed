class User < ApplicationRecord
  has_many :babies, dependent: :destroy
  has_many :user_babies, dependent: :destroy
  has_many :babies_in_charge, through: :user_babies, source: :baby

  validates :name, presence: true
end
