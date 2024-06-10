class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :content, presence: true
  validates :content, length: { maximum: 1000 }

  default_scope -> { order(created_at: :desc) }
  # paginates_per 10
end
