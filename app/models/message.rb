class Message < ApplicationRecord
  belongs_to :chat
  belongs_to :employee, optional: true
  belongs_to :worker, optional: true
  has_many_attached :message_images

  validates :text, presence: true, unless: :was_attached?

  def was_attached?
    self.message_images.attached?
  end
end
