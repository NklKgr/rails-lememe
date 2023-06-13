class Meme < ApplicationRecord
  include ActiveStorageSupport::SupportForBase64

  belongs_to :user
  belongs_to :challenge
  validates :title, presence: true, length: { maximum: 50 }
  has_one_base64_attached :photo
  has_many :votes, dependent: :destroy
  has_many :comments, dependent: :destroy

  def voted_by_current_user?(user)
    votes.find_by(user: user).present?
  end
end
