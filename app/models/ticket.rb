class Ticket

  attr_accessor :attendee, :event

  @@all = []

  def initialize(attendee, event)
    @attendee = attendee
    @event = event
    @@all << self
  end

  def self.all
    @@all
  end
  
end
