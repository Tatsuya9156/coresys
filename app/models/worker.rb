class Worker < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :name,      format: { with: /\A[ぁ-んァ-ン一-龠々]+\z/ }
    validates :name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :address_zip, format: { with: /\A[0-9]{3}-[0-9]{4}\z/ }
    validates :address
    with_options numericality: { only_integer: true } do
      validates :worker_number, format: { with: /\A[0-9]{,4}\z/ }
      validates :phone,         format: { with: /\A[0-9]{10,11}\z/ }
    end
  end
  with_options format: { /\A[A-Z0-9]+\z/ } do
    validates :inaba
    validates :yodo
    validates :takubo
    validates :ykkap
    validates :sankyo
    validates :lixil
  end
  validates :warehouse_zip, format: { with: /\A[0-9]{3}-[0-9]{4}\z/ }

end
