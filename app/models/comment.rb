class Comment < ApplicationRecord
  belongs_to :customer
  belongs_to :employee

  validates :text, presence: true
end
