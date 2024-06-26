class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :content, presence: true
  validates :content, length: { maximum: 245 }

  default_scope -> { order(created_at: :desc) }
end
