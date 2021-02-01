class Message < ApplicationRecord
  has_many :messageable, polymorphic: true
  has_many_attached :message_images
end
