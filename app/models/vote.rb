class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :pin
end
