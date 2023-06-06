class Challenge < ApplicationRecord
  belongs_to :community
  # belongs_to :membership, through: :community
  has_many :memes
  validates :name, presence: true
end
