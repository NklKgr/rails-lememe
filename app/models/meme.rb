class Meme < ApplicationRecord
  include ActiveStorageSupport::SupportForBase64

  belongs_to :user
  belongs_to :challenge
  validates :title, presence: true, length: { maximum: 50 }
  has_one_base64_attached :photo
end
