class Meeting < ApplicationRecord
    
  belongs_to :customer
  belongs_to :worker

  validates :meeting_datetime, presence: true

end
