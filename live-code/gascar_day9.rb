# New behavior
#
# - Send our car to a garage for repair
​
class GasCar < Car # Inheriting from Car class
  attr_reader :petrol # specific GasCar behavior
​
  def initialize(brand, color)
    super # calling parent initialize method
​
    # specific default values
    @petrol = 50
  end
​
  # -- specific behavior
​
  def send_to_garage(garage)
    garage.cars << self # self refers to the instance we're calling the method on
  end
​
  def start
    super         # calling parent start method
    @petrol -= 1  # and adding specific behavior
  end
​
  def refuel(amount)
    return if amount < 0
​
    @petrol += amount
  end
end
