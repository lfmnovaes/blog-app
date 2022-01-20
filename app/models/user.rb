class User < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :posts, dependent: :destroy

  def recent_posts
    posts.order(created_at: :desc).last(3)
  end
end
