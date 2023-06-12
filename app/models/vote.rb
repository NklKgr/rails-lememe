class Vote < ApplicationRecord
  belongs_to :meme
  belongs_to :user
  validates :user, uniqueness: { scope: :meme }
end
