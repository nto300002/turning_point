class Diary < ApplicationRecord
  belongs_to :user
  belongs_to :searchword, optional: true
end
