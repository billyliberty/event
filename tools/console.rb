require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#Example of a variable definition that will be available in your Pry session once you've built out the model:

lucy = Attendee.new("Lucy", 22)
pete = Attendee.new("Pete", 18)
figgie = Attendee.new("Figgie", 32)
luna = Attendee.new("Luna", 24)

monster_boat = Event.new("Monster Boat", 800)
sports_ball = Event.new("Sports Ball", 1300)
worm_slide = Event.new("Worm Slide", 9000)


lucytick = Ticket.new(lucy, monster_boat)
petetick = Ticket.new(pete, monster_boat)
figgietick = Ticket.new(figgie, monster_boat)
lunatick = Ticket.new(luna, sports_ball)
lunatick2 = Ticket.new(luna, monster_boat)

#The variable `lucy` will point to an instance of a new attendee

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
