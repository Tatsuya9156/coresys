class Chat < ApplicationRecord
  has_many :chat_employees
  has_many :employees, through: :chat_employees, validate: false
  has_many :chat_workers
  has_many :workers, through: :chat_workers
  has_many :messages
end