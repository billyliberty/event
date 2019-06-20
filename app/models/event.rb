class Event

  attr_accessor :name, :ticket_price

  @@all = []

  def initialize (name, ticket_price)
    @name = name
    @ticket_price = ticket_price
    @@all << self
  end

  # Returns an array of all Events

  def self.all
    @@all
  end

  # Returns an array of Attendees that have Tickets for the Event

  def tickets
    Ticket.all.select do |ticket|
      ticket.event == self
    end
  end

  def attendees
    tickets.map do |ticket|
      ticket.attendee
    end
  end

  # Returns the average age of all the Attendees that will be at the Event

  def total_crowd
    attendees.length
  end
  
  def total_age
    attendees.reduce(0) do |sum, attendee|
      sum + attendee.age
    end
  end

  def average_age
   total_age / total_crowd
  end
  
  # Accepts an Attendee instance as an argument and makes it so that, when #attendees is called on this Event instance, that Attendee instance will show up in the array.
  
  def sell_ticket(attendee)
    Ticket.new(attendee, self)
  end
  
  # Returns an integer that is the product of the number of Tickets sold for this event and the price of the Ticket.
  
  def money_made
    total_crowd * self.ticket_price
  end
    
end



  
  