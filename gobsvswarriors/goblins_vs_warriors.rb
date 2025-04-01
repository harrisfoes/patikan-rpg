require_relative '../lib/warrior'

war1 = Warrior.new("Johnny", 6)
war2 = Warrior.new("Malek", 7)
war3 = Warrior.new("Shofur", 8)

war1.info()
war2.info()
war3.info()

g1 = Character.new("Makki", 9, 3)
g2 = Character.new("Lierk", 9, 3)
g2 = Character.new("Flunki", 9, 3)

g1.info()
g2.info()
g3.info()

# users create party members up to 3
# users select a character
# select which goblin to kill
#
#
# [1] create character
# [2] do battle
