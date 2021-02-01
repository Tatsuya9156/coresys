class Message < ApplicationRecord
  has_many :messageable, polymorphic: true
end
