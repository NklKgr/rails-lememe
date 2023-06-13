class Community < ApplicationRecord
  has_many :challenges
  has_many :memberships
  has_many :memes, through: :challenges
  has_many :users, through: :memberships
  validates :name, presence: true
  has_one_attached :photo
  belongs_to :user
end
