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
  
  # Attendee#money_spent
  # Returns the dollar amount this Attendee has spent on Tickets for Events:
  
  
end



