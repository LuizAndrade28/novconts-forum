class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :content, presence: true
  validates :title, length: { maximum: 255 }
  validates :content, length: { maximum: 1000 }

  # Searchable attributes
  def self.ransackable_associations(_auth_object = nil)
    ["user"]
  end

  def self.ransackable_attributes(_auth_object = nil)
    ["title"]
  end
end
