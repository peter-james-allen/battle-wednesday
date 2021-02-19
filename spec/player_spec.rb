require 'player'

describe Player do

  it "returns the name of the player" do
    subject = Player.new("Ian")
    expect(subject.player_name).to eq "Ian"
  end


end
