class Event

  attr_accessor :name, :ticket_price

  @@all = []

  def initialize (name, ticket_price)
    @name = name
    @ticket_price = ticket_price
    @@all << self
  end

  def self.all
    @@all
  end

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

  def total_crowd
    attendees.length
  end
  
  def total_age
    attendees.reduce(0) do |sum, attendee|
      sum + attendee.age
    end
  end

  def sell_ticket(attendee)
    Ticket.new(attendee, self)
  end

  def average_age
   total_age / total_crowd
  end

end



  
  