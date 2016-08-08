class Pokemon
  attr_reader :health, :name, :type, :level, :level_evolution
  attr_writer :health
  def initialize(name, type, level, level_evolution)
    @name = name
    @type = type
    @level = level
    @level_evolution = level_evolution
    @health = 100
    @attack = rand(5..50)
  end
​
  def level_up
    @level += 1
    if @level_evolution.key?(@level)
      new_name = @level_evolution[@level]
​
      level_evolution = @level_evolution.clone
      level_evolution.delete(@level)
      Pokemon.new(new_name, @type, @level, level_evolution)
    end
  end
​
  def attack(pokem_other)
    if rand(5) > 1
     pokem_other.health -= @attack
   else
     pokem_other.health -= rand(40..80)
  end
end
​
end
​
pitchu = Pokemon.new("Pitchu", "Electric", 5, {7 => "Picatchu",10 => "Raichu"})
p pitchu
pitchu.level_up
pitchu
p pitchu.level_up
p pitchu
pitchu2 = Pokemon.new("Pitdsqchu", "Electric", 5, {7 => "Picsqdqshu",10 => "Raicsdqjhhu"})
10.times do
  pitchu.attack(pitchu2)
end
p pitchu2.health
Add Comment C
