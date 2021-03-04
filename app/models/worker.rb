class Worker < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :chat_workers
  has_many :chats, through: :chat_workers
  has_many :messages, as: :wordable
  has_many :meetings
  has_many :constructions
  has_one_attached :face_image

  VALID_NUM_REGEX      = /\A[0-9]{4}\z/.freeze
  VALID_NAME_REGEX     = /\A[ぁ-んァ-ン一-龠々]+\z/.freeze
  VALID_KANA_REGEX     = /\A[ァ-ヶー－]+\z/.freeze
  VALID_PHONE_REGEX    = /\A[0-9]{10,11}\z/.freeze
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  VALID_ZIP_REGEX      = /\A[0-9]{3}-[0-9]{4}\z/.freeze
  VALID_DELICODE_REGEX = /\A[A-Z0-9]+\z/.freeze

  with_options presence: true do
    validates :worker_number, format: { with: VALID_NUM_REGEX }, uniqueness: { case_sensitive: true }
    validates :name,          format: { with: VALID_NAME_REGEX }
    validates :name_kana,     format: { with: VALID_KANA_REGEX }
    validates :phone,         format: { with: VALID_PHONE_REGEX }
    validates :address_zip,   format: { with: VALID_ZIP_REGEX }
    validates :warehouse_zip, format: { with: VALID_ZIP_REGEX }
    validates :trade_name
    validates :address
    validates :warehouse
    validates :warehouse_info
    validates :inaba
    validates :yodo
    validates :takubo
    validates :ykkap
    validates :sankyo
    validates :lixil
  end
  validates :password, format: { with: VALID_PASSWORD_REGEX }

  def self.guest
    find_or_create_by!(email: 'testtest1@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
    end
  end
end
