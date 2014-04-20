require 'test_helper'

class EntranceBarrelTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'can not create entrance barrel without producer and barrels' do
    assert_raises(ArgumentError) { EntranceBarrel.new }
  end

  test 'can create entrance barrel with producer and barrels' do
    barrel = barrels(:one)
    producer = Producer.new #producers(:one)
    entrance_barrel = EntranceBarrel.new(producer, barrel)
  end
end
