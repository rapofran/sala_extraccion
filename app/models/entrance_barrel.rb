class EntranceBarrel
  # this class should have the logic to do an entrance barrels
  # create the EntranceMovement and that stuff..

  def initialize(producer, barrels)
    # we should recieve Producer, Barrels
    # maybe is the hash that we recieve from POST /entrance_movement (barrels)
    @producer = producer
    @barrels = barrels
  end

  def save
    # here we must be aware of Exceptions
    # we MUST return a boolean. This'll be used in the controller
    begin
      entrance_movement = EntranceMovement.new(producer: @producer,
                                               nro_remit: EntrnaceMovement.next_nro_remit,
                                               barrels: @barrels)
      entrance_movement.save!
    rescue Exception => e
      # log this
      false
    end
  end
end
