class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :memes
  has_many :comments
  has_many :memberships
  has_many :communities, through: :memberships
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  has_one_attached :photo

  def feed
    # memberships = Membership.where(user_id: id)
    # memberships.map do |membership|
    #   membership.community.challenges.map do |challenge|
    #     challenge.memes
    #   end
    # end
    Meme.joins(challenge: { community: :memberships }).where(memberships: { user_id: id })
  end
end
