class User < ApplicationRecord
  validates_uniqueness_of :email
  validates_uniqueness_of :username
  has_one_attached :dp
  has_one :profile
  has_many :pins
  has_many :votes

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
