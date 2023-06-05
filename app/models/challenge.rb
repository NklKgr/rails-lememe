class Challenge < ApplicationRecord
  belongs_to :community
  has_many :memes
  validates :name, presence: true
end
