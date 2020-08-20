class Pet < ApplicationRecord
  has_many :appointments
  belongs_to :user
  has_one_attached :photo

  def avatar_url
    photo.present? ? photo.key : 'default'
  end
end
