class ChatEmployee < ApplicationRecord
  belongs_to :chat
  belongs_to :employee
end
