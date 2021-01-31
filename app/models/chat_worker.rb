class ChatWorker < ApplicationRecord
  belongs_to :chat
  belongs_to :worker
end
