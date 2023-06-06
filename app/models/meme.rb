class Meme < ApplicationRecord
  belongs_to :user_id
  belongs_to :challenge_id
  validates :title, presence: true, length: { maximum: 50 }
  has_one_attached :photo
end
