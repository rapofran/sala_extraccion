class Wax < ActiveRecord::Base
  # validations
  validates :weight, presence: true

  # associations
  belongs_to :exit_movement, class_name: :movement
end
