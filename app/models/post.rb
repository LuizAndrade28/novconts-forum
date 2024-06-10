class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :content, presence: true
  validates :title, length: { maximum: 255 }
  validates :content, length: { maximum: 1000 }

  default_scope -> { order(created_at: :desc) }
  # paginates_per 10

end
