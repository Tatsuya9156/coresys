class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  with_options presence: true do
    validates :name,      format: { with: /\A[ぁ-んァ-ン一-龠々]+\z/ }
    validates :name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :admin
    with_options numericality: { only_integer: true } do
      validates :employee_number, format: { with: /\A[0-9]{,4}\z/ }
      validates :phone,           format: { with: /\A[0-9]{10,11}\z/ }
    end
  end

end
