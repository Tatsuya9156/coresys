class Message < ApplicationRecord
  belongs_to :chat
  belongs_to :wordable, polymorphic: true
  has_one :task
  has_many_attached :message_images

  validates :text, presence: true, unless: :was_attached?

  def was_attached?
    message_images.attached?
  end
end
