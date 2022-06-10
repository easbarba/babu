class User < ApplicationRecord
  before_save do
    self.email = email.downcase
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  has_many :posts, dependent: :destroy
  has_one :profile
  has_many :replies, through: :posts, source: :comments

  validates :name, presence: true, length: { maximum: 50 }
end
