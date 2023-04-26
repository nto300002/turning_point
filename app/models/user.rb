class User < ApplicationRecord
  has_many :diaries, dependent: :destroy
  has_many :Turningpoints, dependent: :destroy
end
