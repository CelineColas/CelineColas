# CONTRACT of our new electric car
​
# Properties
#
# - brand [same as GasCar]
# - color [same as GasCar]
# - engine_started (default: false) [same as GasCar]
# - battery [specific]
#
# Behavior
#
# - start [same as GasCar]
# - reading brand [same as GasCar]
# - accessing (reading + writing) color [same as GasCar]
# - charge [specific]
# - reading battery level [specific]
​
class ElectricCar < Car
  attr_reader :battery
​
  def initialize(brand, color)
    super # without parameters, it's the same as calling super(brand, color)
​
    # specific default values
    @battery = 100
  end
​
  # -- specific behavior
​
  def charge
    @battery = 100
  end
end
