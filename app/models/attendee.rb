class Attendee

  attr_accessor :name, :age

  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end
  
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
  
  def sum_tickets
    events.reduce(0) do |sum, ticket|
      sum + event.ticket_price
    end
  end
  
  def number_of_events
    events.length 
  end
  
  def money_spent
    sum_tickets * number_of_events
  end
  
  def buy_ticket (event)
    puts ""
  end
  
end



