# Properties
#
# - name
# - location
# - cars (Array of GasCar instances)
​
class Garage
  attr_reader   :name, :location
  attr_accessor :cars # we need to be able to access cars and add cars from the outside
​
  def initialize(name, location)
    @name     = name
    @location = location
    @cars     = []
  end
end
