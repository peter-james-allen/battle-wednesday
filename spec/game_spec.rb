require './lib/game.rb'

describe Game do

it "has players" do
  subject = Game.new("Ian", "Joey")
  expect(subject.player1.player_name).to eq "Ian"
end

it "allows player 1 to attack player 2" do
  subject = Game.new("Ian", "Joey")
  player2 = subject.player2
  expect{ subject.attack(player2) }.to change{ subject.p1attacks }.from(false).to (true)
end

it "reduces player 2's HP by 10 when attacked" do
  subject = Game.new("Ian", "Joey")
  player2 = subject.player2
  expect{ subject.attack(player2) }.to change { player2.hp }.by(-10)
end

end
