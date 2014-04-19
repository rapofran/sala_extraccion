class DrawerContainer < ActiveRecord::Base
  # validations
  validates :drawers, presence: true

  # associations
  belongs_to :movement
end
