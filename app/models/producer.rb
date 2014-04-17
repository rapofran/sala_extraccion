class Producer < ActiveRecord::Base
  validates :name, :last_name, :dni, :telephone, :renapa, :address, presence: true
end
