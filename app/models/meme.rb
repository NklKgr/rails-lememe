class Meme < ApplicationRecord
  belongs_to :user
  belongs_to :challenge
  validates :title, presence: true, length: { maximum: 50 }
end
