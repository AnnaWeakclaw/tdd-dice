require "Player"

describe "Player" do
  let(:player) {
    Player.new
  }
  it "can roll a dice" do
    expect(player).to respond_to(:roll_a_dice)
  end

  it "can roll a random number between 1 and 6" do
    srand(4) #good for testing random generation
    expect(player.roll_a_dice).to eq(3)
  end

  it "can roll any number of dice at the same time" do
    expect(player.how_many(4)).to all(be_between(1, 6))
  end

  it "can see the result of each dice roll" do
    player.how_many(3)
    expect(player.knows_result.any? { |hash| hash[:roll] > 0 && hash[:roll] < 7 }).to be true
  end
end
