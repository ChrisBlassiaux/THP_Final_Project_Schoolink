class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  has_many :comments, as: :commentable, dependent: :destroy
  belongs_to :user
  has_many :comment_likes, dependent: :destroy
  has_many :comment_dislikes, dependent: :destroy
  
  validates :content, presence: true, length: {maximum: 350}

  def how_many_likes?
    self.comment_likes.length
  end

  def how_many_dislikes?
    self.comment_dislikes.length
  end
end
