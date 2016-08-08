require_relative 'car'
require_relative 'electric_car'
require_relative 'gas_car'
require_relative 'garage'
​
puts 'Creating Gas Car...'
toyota = GasCar.new('Toyota', 'Pink')
p toyota
​
puts 'Starting the car...'
toyota.start
p toyota
​
puts "Is Toyota started? #{toyota.engine_started?}"
​
puts '-' * 80
​
puts 'Creating Electric Car...'
tesla = ElectricCar.new('Tesla', 'red')
p tesla
​
puts 'Starting the car...'
tesla.start
p tesla
​
puts '-' * 80
​
puts "Creating Margarita's garage..."
margarita_garage = Garage.new("Margarita's Garage", 'Greece')
​
puts 'Sending Toyota car to garage...'
toyota.send_to_garage(margarita_garage)
​
p margarita_garage
​
puts '-' * 80
puts 'Creating a Car park...'
​
car_park = []
​
10.times do |index|
  brand = ['Toyota', 'Tesla', 'BMW']
  car_park << GasCar.new(brand.sample, 'white')
end
puts "Park has #{car_park.size} cars"
​
puts 'Sending all cars from car park to garage...'
car_park.each do |car|
  car.send_to_garage(margarita_garage)
end
​
p margarita_garage
