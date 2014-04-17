class Barrel < ActiveRecord::Base
  validates :tare, :net_weight, :type, presence: true
end
