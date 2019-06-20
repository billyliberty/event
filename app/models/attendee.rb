class Attendee
  
  attr_accessor :name, :age 
  
  @@all = []
  
  def initialize (name, age)
    @name = name
    @age = age 
    @@all << self
  end
  
  # Attendee.all
  # Returns an array of all Attendees:
  
  def self.all
    @@all
  end
  
  # Attendee#events
  # Returns an array of all Events that the Attendee is attending:
  
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
  
  # Returns the sum of the price for all tickets:
  
  def sum_tickets
    events.reduce(0) do |sum, ticket|
      sum + ticket.event.ticket_price
    end
  end
  
  # Returns the total number of events for the attendee instance:
  
  def number_of_events
    events.length 
  end
    
  # Attendee#money_spent
  # Returns the dollar amount this Attendee has spent on Tickets for Events:
  
  def money_spent
    sum_tickets * number_of_events
  end
  
  # Attendee#buy_ticket
  # Accepts an Event instance as an argument and makes it so that, when #events is called on this Attendee instance, the passed-in Event will appear in the resulting array:
  
  def buy_ticket (event)
    puts ""
  end
  
end



