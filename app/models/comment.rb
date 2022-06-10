class Comment < ApplicationRecord
  belongs_to :post

  validates :name, :email, :body, presence: true
  # validate :post_should_be_published

  after_create :email_post_author

  # def post_should_be_published
  #   errors.add(:post_id, 'is not published yet') if post && !post.published?
  # end

  def email_post_author
    puts "We will notify #{post.user.email} in Chapter 12" if post.user
  end
end
