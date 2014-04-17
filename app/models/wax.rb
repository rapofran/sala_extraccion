class Wax < ActiveRecord::Base
  validates :weight, presence: true
end
