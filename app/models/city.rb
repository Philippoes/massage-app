class City < ApplicationRecord
  has_many :requests
  has_many :users
end
