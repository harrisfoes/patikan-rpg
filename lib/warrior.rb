module Dice
  def self.roll(n)
    r = rand(n)
    puts "you rolled a #{r}"
    return r 
  end
end

class Warrior
  attr_accessor :name, :level, :life, :gold, :armor_points

  def initialize(name)
    @name = name
    @level = 1 
    @life = 6 + @level

    @gold = Dice.roll(6) + Dice.roll(6)
  end

  def info()
    puts "Name: #{@name}"
    puts "Level: #{@level}"
    puts "Life: #{@life}"
    puts "Gold: #{@gold}"
  end

end

war1 = Warrior.new("arbo")
puts war1.info()
