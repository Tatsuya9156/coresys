class Customer < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :store
  belongs_to :status

  VALID_NAME_REGEX = /\A[ぁ-んァ-ン一-龠々]+\z/
  VALID_KANA_REGEX = /\A[ァ-ヶー－]+\z/
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_ZIP_REGEX = /\A[0-9]{3}-[0-9]{4}\z/

  with_options presence: true do
    validates :order_date
    validates :store_id
    validates :status_id
    validates :name,      format: { with: VALID_NAME_REGEX }
    validates :name_kana, format: { with: VALID_KANA_REGEX }
    validates :email,     format: { with: VALID_EMAIL_REGEX }
    validates :phone,     numericality: { only_integer: true }
    with_options format: { with: VALID_ZIP_REGEX } do
      validates :address_zip
      validates :residence_zip
    end
    validates :address
    validates :residence
  end
end
