class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true

  # Example association: a post belongs to a user
  belongs_to :user
end
