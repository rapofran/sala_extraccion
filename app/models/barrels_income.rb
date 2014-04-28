class BarrelsIncome < ActiveRecord::Base

	# validations
  validates :nro_remit, :producer_id, presence: true
	  
  # associations
  belongs_to :producer
  has_many :barrels
end
