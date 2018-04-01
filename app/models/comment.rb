class Comment < ApplicationRecord
  # Associations
  belongs_to :post

  # Validations
  validates :author, presence: true
  validates :body, presence: true
end
