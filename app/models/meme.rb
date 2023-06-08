class Meme < ApplicationRecord
  belongs_to :user
  belongs_to :challenge
  validates :title, presence: true, length: { maximum: 50 }
  has_one_attached :photo
  has_many :votes, dependent: :destroy

  def voted_by_current_user?(user)
    votes.find_by(user: user).present?
  end
end
