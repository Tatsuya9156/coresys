class Construntion < ApplicationRecord
  
  belongs_to :customer
  belongs_to :worker

  validates :construntion_datetime, presence: true

end
