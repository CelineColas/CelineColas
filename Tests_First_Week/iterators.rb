fruits = %w (apple orange kiwi peach)

#the poor way
fruits.each do |fruit|
  index = fruits.index(fruit)
  puts "#{index + 1}. let's eat #{fruit}" #+1 to start at 1 and not 0
end


fruits.each_with_index do |fruit, index|
  puts "#{index +1}. Let's eat #{fruit}"
end


#%w (apple orange kiwi peach)
#%w (APPLE ORANGE KIWI PEACH)
#fruit => fruit.upcase

#poor way
cap_fruits = []
fruits.each do |fruit|
  cap_fruits << fruit.upcase
end


fruits.map do |fruit|
  fruit.upcase
end
#or
cap_fruits = fruits.map { |fruit| fruit.upcase }

# ==> TRANSFORMED_ARRAY = INITIAL_ARRAY.map { |element| transform(element)}


a_fruits_count = 0
fruits.each do |fruit|
  a_fruits_count += 1 if fruit.include?("a")
end

def count_elements(array, letter)
  count = 0
  array.each do |element|
  count += 1 if element.include?(letter)
  end
  return count
end

#or

def count_elements(array, letter)
  return array.count { |element| element.include?(letter) }
end



a_fruits = fruits.select do |fruit|
  fruit.include?("a")
end































end








