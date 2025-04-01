require_relative 'character'
require_relative 'dice'

class Warrior < Character
  attr_accessor :level, :gold, :armor_points, :attack_damage

  def initialize(name, damage)
    @name = name
    @level = 1 
    @hp = 6 + @level
    @attack_damage = damage

    @gold = Dice.roll(6) * 2
  end

  def info()
    puts "Name: #{@name} the Warrior"
    puts "Level: #{@level}"
    puts "Life: #{@hp}"
    puts "Gold: #{@gold}"
  end

end

