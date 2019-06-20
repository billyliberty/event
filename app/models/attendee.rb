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
  
  def attendee_events
    Events.all.select do |event|
      event.attendee == self
    end
  end
  
  # Attendee#money_spent
  # Returns the dollar amount this Attendee has spent on Tickets for Events:
  
  def money_spent
  end
  
  # Attendee#buy_ticket
  # Accepts an Event instance as an argument and makes it so that, when #events is called on this Attendee instance, the passed-in Event will appear in the resulting array:
  
  def buy_ticket (event)
    
  end
  
end



