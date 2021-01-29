class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  VALID_NUM_REGEX   = /\A[0-9]{4}\z/.freeze
  VALID_NAME_REGEX  = /\A[ぁ-んァ-ン一-龠々]+\z/.freeze
  VALID_KANA_REGEX  = /\A[ァ-ヶー－]+\z/.freeze
  VALID_PHONE_REGEX = /\A[0-9]{10,11}\z/.freeze
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze

  with_options presence: true do
    validates :employee_number, format: { with: VALID_NUM_REGEX }, uniqueness: true
    validates :name,            format: { with: VALID_NAME_REGEX }
    validates :name_kana,       format: { with: VALID_KANA_REGEX }
    validates :phone,           format: { with: VALID_PHONE_REGEX }
    validates :position
  end
  validates :password, format: { with: VALID_PASSWORD_REGEX }, uniqueness: true
  validates :admin, inclusion: {in: [true, false]}
end
