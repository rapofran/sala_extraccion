class DrawerContainer < ActiveRecord::Base
  # validations
  validates :drawers, presence: true

  # associations
  belongs_to :drawerconteiner_incomes
end
