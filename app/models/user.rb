class User < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :pets, dependent: :destroy
  has_one_attached :photo

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def avatar_url
    photo.present? ? photo.key : 'default'
  end
end
