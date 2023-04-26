class Goal < ApplicationRecord
  belongs_to :turningpoint, optional: true
end
