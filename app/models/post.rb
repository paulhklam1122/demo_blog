class Post < ApplicationRecord
  # Friendly ID
  include FriendlyId
  friendly_id :title, use: :slugged

  # Associations
  has_many :comments

  # Validations
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true
end
