def square (number)
  squared_number = number * number
  return  squared_number
end

puts square (2)
# puts square(29)
# puts square(32)


# cmd+shift+slash = put some lines on comment


def full_name(first,last) #convention = snake_case ; for Js = CamelCase
  name = first.capitalize + " " + last.capitalize
  return name
end

puts full_name("celine", "colas")
#puts full_name("Pierre", "Winckler")




def full_name(first,last)
  name = first.capitalize + " " + last.capitalize
  return name
end

pierre_first_name = "Pierre"
pierre_last_name = "Winckler"

puts full_name(pierre_first_name, pierre_last_name)
