class Customer < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :store
  belongs_to :status

  VALID_NAME_REGEX = /\A[ぁ-んァ-ン一-龠々]+\z/
<<<<<<< HEAD
  VALID_KANA_REGEX = /\A[ァ-ヶー－]+\z/
  VALID_PHONE_REGEX = /\A[0-9]{10,11}\z/
=======
  VALID_NAME_KANA_REGEX = /\A[ァ-ヶー－]+\z/
>>>>>>> parent of 9c9b463... 変数名の修正
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_ZIP_REGEX = /\A[0-9]{3}-[0-9]{4}\z/

  with_options presence: true do
    validates :order_date
    validates :store_id
    validates :status_id
    validates :name,        format: { with: VALID_NAME_REGEX }
    validates :name_kana,   format: { with: VALID_KANA_REGEX }
    validates :phone,       format: { with: VALID_PHONE_REGEX }
    validates :email,       format: { with: VALID_EMAIL_REGEX }
    validates :address_zip, format: { with: VALID_ZIP_REGEX }
    validates :address
  end
  validates :residence_zip, format: { with: VALID_ZIP_REGEX }
  validates :residence
end
