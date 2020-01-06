class Pin < ApplicationRecord
  belongs_to :user
  has_many :votes
  has_one_attached :image
end
