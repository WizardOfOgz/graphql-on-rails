class User < ApplicationRecord
  belongs_to :company, required: false
  has_one :address
  has_many :posts
end
