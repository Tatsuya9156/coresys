class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :chat_employees
  has_many :chats, through: :chat_employees
  has_many :customers
  has_many :comments
  has_many :messages, as: :wordable
  has_many :client_tasks, class_name: 'Task', foreign_key: 'client_id'
  has_many :pic_tasks, class_name: 'Task', foreign_key: 'pic_id'
  has_one_attached :face_image

  VALID_NUM_REGEX   = /\A[0-9]{4}\z/.freeze
  VALID_NAME_REGEX  = /\A[ぁ-んァ-ン一-龠々]+\z/.freeze
  VALID_KANA_REGEX  = /\A[ァ-ヶー－]+\z/.freeze
  VALID_PHONE_REGEX = /\A[0-9]{10,11}\z/.freeze
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze

  with_options presence: true do
    validates :employee_number, format: { with: VALID_NUM_REGEX }, uniqueness: { case_sensitive: true }
    validates :name,            format: { with: VALID_NAME_REGEX }
    validates :name_kana,       format: { with: VALID_KANA_REGEX }
    validates :phone,           format: { with: VALID_PHONE_REGEX }
    validates :section
    validates :position
  end
  validates :password, format: { with: VALID_PASSWORD_REGEX }
  validates :admin,    inclusion: { in: [true, false] }
  validates :enrolled, inclusion: { in: [true, false] }

  def self.guest
    find_or_create_by!(email: 'test1@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
    end
  end
end
