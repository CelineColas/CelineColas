# PUBLIC INTERFACE (Contract)
​
# - access to color, brand, model, petrol values
# - can edit brand and model values
# - paint with new color
# - start the engine
# - check if engine is started
# - refuel
​
class Car
  attr_reader :color, :brand, :petrol #, :model
  attr_writer :brand #, :model
  attr_accessor :model
​
  def initialize(brand, model, color) # constructor
    # puts 'Initialization phase'
​
    # default values
    @petrol = 50 # instance variable, don't forget the `@` sign
    @engine_started = false
​
    # saving values passed
    @brand = brand
    @model = model
    @color = color
  end
​
  # Same as attr_writer :brand
​
  # def brand=(new_brand)
  #   @brand = new_brand
  # end
​
  # Same as attr_writer :model
​
  # def model=(new_model)
  #   @model = new_model
  # end
​
  # Same as attr_reader :color
​
  # def color
  #   # it should return the color value
  #   return @color
  # end
​
  def paint(new_color)
    @color = new_color
  end
​
  def start
    # CONTACT: it should set engine_started to true
    @engine_started = true
    @petrol -= 1
​
    start_petrol_pump
    init_spark_plug
  end
​
  def engine_started?
    # CONTACT: it should return engine started value
    return @engine_started
  end
​
  def refuel(amount)
    return if amount < 0
    @petrol += amount
  end
​
  private
​
  # internal behavior
​
  def start_petrol_pump
    puts 'Start petrol pumping'
  end
​
  def init_spark_plug
    puts 'Initialize spark plug'
  end
end
​
# A bit of convention
​
# filename            <=>   class name
#
# rule:
#   lower_snake_case        UpperCamelCase
#
# examples:
#   car.rb                  Car
#   sport_car.rb            SportCar
