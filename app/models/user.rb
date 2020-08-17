class User < ApplicationRecord
  has_many :appointments, dependent: :destroy
end
