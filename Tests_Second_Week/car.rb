# PUBLIC INTERFACE (contract)
#  access to values
#  can edit values
#  paint the new color
#  start engine
#  check if engine started

class Car

  attr_reader :color :brand #give access to variables
  attr_writer :color :brand

  attr_accessor :model

  def initialize ('brand', 'model', 'color') #constructor : to set different properties/variables
    puts "Initialization phase"
    @engine_started = false # we can put default values like this, don't put into initialize

    # variable inside class = with @ to let the other classes be able to access this

    @brand = brand
    @model = model
    @color = color
  end
end


# def color
#   return @color
# end

def start
  @engine_started = true
end

def engine_started?
  return @engine_started
end

def paint(new_color)
  @color = new_color
end
