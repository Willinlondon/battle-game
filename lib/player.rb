class Player
    DEFAULT_HP = 50
    attr_reader :name, :hp
    def initialize(name, hp = DEFAULT_HP)
        @name = name
        @hp = hp
    end
    def damage 
      @hp -= 10
    end
    def attack(player)
        player.damage
    end
end