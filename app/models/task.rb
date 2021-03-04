class Task < ApplicationRecord
  belongs_to :chat
  belongs_to :client, class_name: "Employee", foreign_key: "client_id"
  belongs_to :pic, class_name: "Employee", foreign_key: "pic_id"

  validates :text, presence: true
end
