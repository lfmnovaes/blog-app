class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  def recent_comments
    comments.order(created_at: :desc).first(5)
  end

  def update_counter
    user.posts_counter = 0 if user.posts_counter.nil?
    user.posts_counter += 1
    user.save
  end
end
