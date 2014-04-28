class Barrel < ActiveRecord::Base
  # validations  
  validates :tare, :net_weight, :type, presence: true

  # associations
  belongs_to :barrels_incomes
end
