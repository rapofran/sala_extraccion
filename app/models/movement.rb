class Movement < ActiveRecord::Base
  # validations
  validates :nro_remit, :producer_id, presence: true

  # associations
  belongs_to :producer
  has_one :drawer_container
  has_one :wax
  has_and_belongs_to_many :barrels
end
