class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, :body, :user, presence: true

  def published?
    published_at.present?
  end

  def owned_by?(owner)
    return false unless owner.is_a?(User)

    user == owner
  end
end
