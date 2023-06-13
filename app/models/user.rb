class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :memes
  has_many :comments
  has_many :memberships
  has_many :communities_as_member, through: :memberships, source: :community
  has_many :communities # owner of communities
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  has_one_attached :photo
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  def feed
    # memberships = Membership.where(user_id: id)
    # memberships.map do |membership|
    #   membership.community.challenges.map do |challenge|
    #     challenge.memes
    #   end
    # end
    Meme.joins(challenge: { community: :memberships })
        .where(memberships: { user_id: id })
        .or(Meme.joins(challenge: { community: :memberships })
                .where(communities: { user_id: id }))
        .order(created_at: :desc)
  end

  def approved_community_memberships
    communities_as_member.joins(:memberships).where(memberships: { status: "approved" })
  end
end
