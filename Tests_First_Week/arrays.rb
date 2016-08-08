beatles = ["georges", "paul", "ringo"]

#read items beginning at 0
puts beatles[1]
puts beatles[0]

#add item at the end
beatles.push("john")
#or
beatles << "john"

p beatles

#size
p beatles.length
p beatles.count
p beatles.size


#delete an item
beatles.delete_at(2)
beatles.delete("ringo")

#change item or override
beatles[2] = new_value


for element in array
  #do something
end


for i in (0..3)
  puts "This is #{beatles[i]}"
end

#or

for i in 0..(beatles.length - 1)
  puts "This is #{beatles[i]}"
end


#Preferred syntax !
beatles.each do |beatle|
  puts "This is #{beatle}"
end



#Last example
fruits = []

fruits << "orange"
fruits << "banana"
fruits << "apple"

fruits.each do |fruit|
  puts "Yummy, good #{fruit}"
end



