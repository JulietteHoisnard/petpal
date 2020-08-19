class Pet < ApplicationRecord
  has_many :appointments
  belongs_to :user
end
