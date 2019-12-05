class Comment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :book
  validates :description, presence: true
end
