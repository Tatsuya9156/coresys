class Chat < ApplicationRecord
  has_many :chat_employees, dependent: :destroy
  has_many :employees, through: :chat_employees, validate: false #社員モデルのバリデーションに影響されるため「validate:false」を追加
  has_many :chat_workers, dependent: :destroy
  has_many :workers, through: :chat_workers, validate: false #職人モデルのバリデーションに影響されるため「validate:false」を追加
  has_many :messages, dependent: :destroy

  validates :title, presence: true
end
