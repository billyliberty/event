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

monster_fest = Event.new("Monster Fest", 8)
comic_con = Event.new("Comic Con", 700)

lucyti = Ticket.new(lucy, monster_fest)
peteti = Ticket.new(pete, monster_fest)
figgieti = Ticket.new(figgie, comic_con)

#The variable `lucy` will point to an instance of a new attendee

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
