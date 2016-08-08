def greets #define a method

  return "Hello world" # output of the method
end


puts greets #call the method


# Defining a method
def greets (name)

  return "Hello #{name}" #name = parameter
end

#Calling a method
puts greets("Céline") # Celine, etc. = arguments (value for the parameter)
puts greets("Pierre")
puts greets("Jeanne")
puts greets("Jean")




def greets (first_name, last_name)

  return "Hello #{first_name} #{last_name}" # 2 parameters
end

puts greets("Céline", "Colas")
puts greets("Pierre", "Winckler")


# def tomorrow
#   tomorrow_date = Date.today + 1
#   return tomorrow_date.strftime("%B %d")
# end

# puts tomorrow
