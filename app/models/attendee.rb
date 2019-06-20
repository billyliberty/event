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
  
  def money_spent
    events.reduce(0) do |sum, event| 
      sum + event.ticket_price
    end
  end
  
  # Accepts an Event instance as an argument and makes it so that, when #events is called on this Attendee instance, the passed-in Event will appear in the resulting array.
  
  def buy_ticket (event)
    Ticket.new(self, event)
  end
  
  def fun 
    if number_of_events >= 3
      puts "MAXIMUM 9000 FUN LEVEL UNLOCKED"
    else
      puts "Why so boring? HAVE MORE FUN PLS"
    end
  end
  
end



