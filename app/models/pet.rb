class Pet < ApplicationRecord
  has_many :appointments
  belongs_to :user
  has_one_attached :photo
end
