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

