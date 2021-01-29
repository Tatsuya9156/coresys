class Worker < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  VALID_NUM_REGEX      = /\A[0-9]{4}\z/.freeze
  VALID_NAME_REGEX     = /\A[ぁ-んァ-ン一-龠々]+\z/.freeze
  VALID_KANA_REGEX     = /\A[ァ-ヶー－]+\z/.freeze
  VALID_PHONE_REGEX    = /\A[0-9]{10,11}\z/.freeze
  VALID_EMAIL_REGEX    = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  VALID_ZIP_REGEX      = /\A[0-9]{3}-[0-9]{4}\z/.freeze
  VALID_DELICODE_REGEX = /\A[A-Z0-9]+\z/.freeze

  with_options presence: true do
    validates :worker_number, format: { with: VALID_NUM_REGEX }
    validates :name,          format: { with: VALID_NAME_REGEX }
    validates :name_kana,     format: { with: VALID_KANA_REGEX }
    validates :phone,         format: { with: VALID_PHONE_REGEX }
    validates :address_zip,   format: { with: VALID_ZIP_REGEX }
    validates :address
    validates :trade_name
  end
  validates :warehouse_zip, format: { with: VALID_ZIP_REGEX }
  with_options format: { with: VALID_DELICODE_REGEX } do
    validates :inaba
    validates :yodo
    validates :takubo
    validates :ykkap
    validates :sankyo
    validates :lixil
  end
end
