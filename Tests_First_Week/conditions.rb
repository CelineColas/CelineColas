age = 17

if age >= 18
  #code if true
  puts "I can vote"
else
  #code if false
  puts "Oh no, I'm too young!"
end


number = 14

if number.even?
  puts "Your number is even" #if it's false, he won't print anything
end


if number > 100
  puts "it's a big number"
  #Pay attention : the more specific to the less
  #specific condition !!

elsif number < 0
  puts "it's negative"
elsif number > 0
  puts "it's positive"
else
  puts "you're zero"
end


puts "What do you want to do ? [r/w/q]"
action = gets.chomp

if action == "r"
  puts "You are in READ mode"
elsif action == "w"
  puts "You are in WRITE mode"
elsif action == "q"
  puts "See you!"
else
  puts "Please select a valid action"
end



#Another syntax
puts "What do you want to do ? [r/w/q]"
action = gets.chomp

case action
 when "r"
  puts "READ mode"
when "w"
  puts "WRIET mode"
when "q"
  puts "QUIT"
else
  puts "Invalid action"
end



#Opening hours of a fictional shop (no lunch)
puts "What hour?"
print ">"

hour = gets.chomp.to_i

if (hour > 9) && (hour < 19)
  puts "Shop is open"
else
  puts "Shop is closed"
end


#Opening hours of a real shop (with lunch)
puts "What hour?"
print ">"

hour = gets.chomp.to_i

if ((hour > 9) && (hour < 12)) || ((hour > 14) && (hour < 19))
  puts "Shop is open"
else
  puts "Shop is closed"
end





#While whit counter
count = 0

while count < 6
  puts "Hello"
  sleep (1)
  count +=1
end




#While with user input
again = "yes"

while again == "yes"
  puts "Hello"
  sleep(1)
  puts "Repeat again?"
  again = gets.chomp
end




#For loop with range
for i in 1..10
  puts "number is #{i}"
  sleep(2)
end





#For loop with array
for nephew in ["huey", "dewey", "louie"]
  puts "The nephew is #{nephew.capitalize}"
  sleep(2)
end











