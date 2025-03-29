module Dice
  def self.roll(n)
    return rand(n) 
  end
end

class Character
  attr_accessor :name, :hp, :attack_damage

  def initialize(name, hp, attack_damage)
    @name = name
    @hp = hp
    @attack_damage = attack_damage
  end

  def alive?
    @hp > 0
  end

  def attack(opponent)
    damage = Dice.roll(@attack_damage)
    opponent.hp -= damage
    opponent.hp = 0 if opponent.hp < 0
    puts "#{@name} attacks #{opponent.name} for #{damage}"
  end

  def info()
    puts "Name: #{@name}"
    puts "HP: #{@hp}"
  end

end

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

war1 = Warrior.new("Arbo", 6)
puts war1.info()

gob1 = Character.new("Goblin", 4, 6)
puts gob1.info()

war1.attack(gob1)
gob1.attack(war1)

puts "After turn 1 #{war1.name} has #{war1.hp} left"
puts "After turn 1 #{gob1.name} has #{gob1.hp} left"
