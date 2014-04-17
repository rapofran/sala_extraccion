class DrawerContainer < ActiveRecord::Base
  validates :drawers, presence: true
end
