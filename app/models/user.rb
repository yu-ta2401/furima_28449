class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,:confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  #validates :name, presence: true
  #has_many :room_users
  #has_many :rooms, through: :room_users
  #has_many :messages

validates :name, presence: true
end