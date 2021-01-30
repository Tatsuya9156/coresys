class Chat < ApplicationRecord
  has_many :chat_employees
  has_many :employees, through: :chat_employees
  has_many :chat_workers
  has_many :workers, through: :chat_workers
end
