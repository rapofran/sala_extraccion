class DrawerConteinerIncome < ActiveRecord::Base
  # validations
  validates :nro_remit, :producer_id, presence: true

  #association
  belongs_to :producer
  has_one :drawer_container

end
