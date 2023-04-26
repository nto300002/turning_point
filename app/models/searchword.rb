class Searchword < ApplicationRecord
  has_many :diaries
  has_many :turningpoints
end
