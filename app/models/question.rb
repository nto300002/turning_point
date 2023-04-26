class Question < ApplicationRecord
  belongs_to :turningpoint, optional: true
end
