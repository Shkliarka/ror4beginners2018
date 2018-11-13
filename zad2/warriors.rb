class Warrior
  def initialize(name:, level:)
    self.name = name
    self.level = level
  end
  
  def card
    "I am #{name}. My level is #{level}"
  end 
  
  class Monster < Character
  end
  
  class Warrior < Character
  def lvlup n
    self.level += n
  end
    
  def strength
    @level+[*1..12].sample
  end
end

class BattleArena
  def initialize(first_character, second_character)
    self.first_character = first_character
    self.second_character = second_character
  end
  
   def battle!
    enemy1 = first_character.strength
    enemy2 = second_character.strength
    fight(enemy1, enemy2)
    dmg(enemy1, enemy2)
  end
end

  
