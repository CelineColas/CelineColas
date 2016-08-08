# New Behavior
#
# - Generic specs: wheels, doors, seats, etc.
class Car
  attr_reader   :brand
  attr_accessor :color
​
  def self.generic_specs # class method
    {
      wheels: 4,
      doors:  5,
      seats:  4
    }
  end
​
  def initialize(brand, color)
    # saving values passed
    @brand = brand
    @color = color
​
    # default values
    @engine_started = false
  end
​
  def start
    @engine_started = true
  end
​
  def engine_started?
    return @engine_started
  end
end
