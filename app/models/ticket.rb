class Ticket

  attr_accessor :attendee, :event

  @@all = []

  def initialize(attendee, event)
    @attendee = attendee
    @event = event
    @@all << self
  end

  # Returns an array of all Tickets

  def self.all
    @@all
  end
  
end
