class User < ApplicationRecord
  has_many :answers
  belongs_to :city
end
