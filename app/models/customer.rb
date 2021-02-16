class Customer < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :employee
  belongs_to :store
  belongs_to :status
  has_many   :comments
  has_one    :meeting
  has_one    :construction

  VALID_NAME_REGEX  = /\A[ぁ-んァ-ン一-龠々]+\z/.freeze
  VALID_KANA_REGEX  = /\A[ァ-ヶー－]+\z/.freeze
  VALID_PHONE_REGEX = /\A[0-9]{10,11}\z/.freeze
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  VALID_ZIP_REGEX   = /\A[0-9]{3}-[0-9]{4}\z/.freeze

  with_options presence: true do
    validates :order_date
    validates :store_id
    validates :status_id
    validates :name,        format: { with: VALID_NAME_REGEX }
    validates :name_kana,   format: { with: VALID_KANA_REGEX }
    validates :phone,       format: { with: VALID_PHONE_REGEX }
    validates :email,       format: { with: VALID_EMAIL_REGEX }
    validates :address
    validates :residence
    with_options format: { with: VALID_ZIP_REGEX } do
      validates :address_zip
      validates :residence_zip
    end
  end
end
