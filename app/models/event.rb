class Event
  
  attr_accessor :name, :ticket_price
  
  @@all = []
  
  def initialize (name, ticket_price)
    @name = name
    @ticket_price = ticket_price
    @@all << self
  end
  
  # Event.all
  # Returns an array of all Events:
  
  def self.all
    @@all
  end
  
  # Event#attendees
  # Returns an array of Attendee that have Tickets for the Event:
  
  def attendees 
    Ticket.all.select do |ticket|
      ticket.attendee == self
    end
  end
  
  def tickets
    puts "TEST"
  end
  
  def sum_age_attendees (attendee)
    attendee.reduce(0) do |sum, attendee|
      sum + attendee.age
    end
  end
  
  # Event#average_age
  # Returns the average age of all the Attendees that will be at the Event:
  
  def average_age
    puts "TEST"
  end
  
  # Event#sell_ticket 
  # Accepts an Attendee instance as an argument and makes it so that, when #attendees is called on this Event instance, that Attendee instance will show up in the array:
  
  def sell_ticket (attendee)
    puts "TEST"
  end
  
  # Event#money_made
  # Returns an integer that is the product of the number of Tickets sold for this event and the price of the Ticket:
  
  def money_made
    puts "TEST"
  end

end




