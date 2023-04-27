class User < ApplicationRecord
  has_many :diaries, dependent: :destroy
  has_many :Turningpoints, dependent: :destroy
  has_secure_password
end
