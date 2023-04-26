class Turningpoint < ApplicationRecord
  belongs_to :user
  belongs_to :goal, optional: true
  belongs_to :question, optional: true
  belongs_to :searchword, optional: true
end
