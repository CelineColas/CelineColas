class OrangeTree
  # TODO: Implement all the specs defined in the README.md :)
  attr_reader :height
  attr_reader :dead

  def initialize
    @dead = false
    @age = 0
    @fruits = 0
    @height = 0
  end

  def one_year_passes!
    unless dead == true
    @age += 1
    tree_age
    fruits_growth
    tree_measure
    pick_a_fruit
    end
  end

  def tree_age
    if @age < 10
      one_year_passes!
      @height += 1
    elsif @age < 50
      one_year_passes!
    elsif 50 < @age < 100
      @dead = [true, false].sample
    elsif @age == 100
      @dead = true
    end
  end

  def dead
    if @dead = true
    end
  end

  def fruits_growth
    if @age >= 5 && @age < 10
      @fruits = 100
    elsif @age >= 10 && @age < 15
      @fruits = 200
    end
  end

  def pick_a_fruit
    @fruits = @fruits - 1 if @fruits > 0
  end
end
