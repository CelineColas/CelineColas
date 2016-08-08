# We load the car file - it just loads the Car class structure, that's it
require_relative 'car'
​
# We instantiate 2 Car instances
bmw = Car.new('BMW', 'I3', 'black')
vw = Car.new('VW', 'T4', 'red')
​
# Just used for debug purpose
​
# p bmw
# p vw
​
puts 'You just created 2 cars'
puts '-' * 30
​
puts 'First car details are:'
puts "brand: #{bmw.brand}"
puts "model: #{bmw.model}"
puts "color: #{bmw.color}"
​
puts '-' * 30
​
puts 'We paint the BMW in blue'
bmw.paint("blue")
puts "New color is #{bmw.color}"
​
puts '-' * 30
​
puts 'We start the BMW'
bmw.start
​
if bmw.engine_started?
  puts 'Engine is started'
else
  puts 'Engine is not started'
end
​
puts "Petrol level: #{bmw.petrol}"
​
puts '-' * 30
​
puts 'We refuel it by 10 L'
bmw.refuel(10)
puts "Petrol level: #{bmw.petrol}"
