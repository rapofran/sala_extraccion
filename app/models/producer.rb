class Producer < ActiveRecord::Base
  # validations
  validates :name, :last_name, :dni, :telephone, :renapa, :address, presence: true
  
  # associations 
  has_many :barrels_incomes, dependent: :destroy
end