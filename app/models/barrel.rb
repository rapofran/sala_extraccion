class Barrel < ActiveRecord::Base
  # validations  
  validates :tare, :net_weight, :type, presence: true

  # associations
  has_and_belongs_to_many :movements
end
