class Player

  attr_reader :player_name, :hp

def initialize(name)
  @player_name = name
  @hp = 100
end

def is_attacked
  @hp -= 10
end

end
