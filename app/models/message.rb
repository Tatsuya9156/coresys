class Message < ApplicationRecord
  belongs_to :chat
  belongs_to :employee, optional: true
  belongs_to :worker, optional: true
  has_many_attached :message_images
end
