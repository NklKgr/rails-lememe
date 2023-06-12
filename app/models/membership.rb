class Membership < ApplicationRecord
  belongs_to :community
  belongs_to :user
  has_many :challenges, through: :community
  has_many :memes, through: :challenge
  validates :user_id, uniqueness: { scope: :community_id }
end
