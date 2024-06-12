class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :first_name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :first_name, length: { maximum: 255 }
  validates :email, length: { maximum: 255 }

  # Include default devise modules.
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable,
  devise :database_authenticatable, :registerable, :rememberable, :validatable

  def self.ransackable_attributes(_auth_object = nil)
    ["first_name", "email"]
  end

  def self.ransackable_associations(_auth_object = nil)
    []
  end
end
