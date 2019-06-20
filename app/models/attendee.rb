class Attendee

  attr_accessor :name, :age

  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end
  
  # Returns an array of all Attendees

  def self.all
    @@all
  end
  
  # Returns an array of all Events that the Attendee is attending.
  
  def tickets
    Ticket.all.select do |ticket|
      ticket.attendee == self
    end
  end

  def events
    tickets.map do |ticket|
      ticket.event
    end
  end
  
  # Returns the dollar amount this Attendee has spent on Tickets for Events
  
  def number_of_events
    events.length 
  end
  
  def total_price
    events.reduce(0) do |sum, event|
      sum + event.ticket_price
    end
  end
  
  def money_spent
    number_of_events * total_price
  end
  
  # Accepts an Event instance as an argument and makes it so that, when #events is called on this Attendee instance, the passed-in Event will appear in the resulting array.
  
  def buy_ticket (event)
    Ticket.new(self, event)
  end
  
end



