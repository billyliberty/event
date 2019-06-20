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
  
  def events
    Ticket.all.select do |ticket|
      ticket.event == self
    end
  end
  
  # Returns the sum of the price for all tickets in the event instance:
  
  def sum_tickets (ticket)
    ticket.reduce(0) do |sum, ticket|
      sum + event.ticket_price
    end
  end
    
  # Attendee#money_spent
  # Returns the dollar amount this Attendee has spent on Tickets for Events:
  
  def money_spent
    sum_tickets * events
  end
  
  # Attendee#buy_ticket
  # Accepts an Event instance as an argument and makes it so that, when #events is called on this Attendee instance, the passed-in Event will appear in the resulting array:
  
  def buy_ticket (event)
    puts "TEST"
  end
  
end



