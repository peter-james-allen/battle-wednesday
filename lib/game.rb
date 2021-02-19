require_relative 'player'

class Game

  attr_accessor :player1, :player2, :p1attacks, :p2attacks

  def initialize(player1, player2, player_class = Player)
    @player1 = player_class.new(player1)
    @player2 = player_class.new(player2)
    @p1attacks = false
    @p2attacks = false
  end

def attack(person)
  #(person) must be @player1 or @player2
  @p1attacks = true if person == @player2
  @p2attacks = true if person == @player1
  person.is_attacked
end

end
