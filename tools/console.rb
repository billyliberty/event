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

monster_fest = Event.new("Monster Fest", 800)
sports_ball = Event.new("Sports Ball", 1300)

lucytick = Ticket.new(lucy, monster_fest)
petetick = Ticket.new(pete, monster_fest)
figgietick = Ticket.new(figgie, monster_fest)
lunatick = Ticket.new(luna, sports_ball)
lunatick2 = Ticket.new(luna, monster_fest)

#The variable `lucy` will point to an instance of a new attendee

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
