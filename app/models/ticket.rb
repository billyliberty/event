class Ticket
  
  attr_accessor :attendee, :event
  
  @@all = []
  
  def initialize (event, attendee)
    @attendee = attendee
    @event = event
    @@all << self
  end
  
  # Ticket.all
    # Returns an array of all Ticket instances:
    
  def self.all
    @@all
  end
  
end


