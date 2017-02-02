require "towers_of_hanoi"

describe Towers do

  subject(:tower) {Towers.new}

  describe "#initialize" do

    it "creates an array with the first element as [3,2,1] and the other ones []" do
      expect(tower.sticks).to eq([[3, 2, 1], [], []])
    end
  end

  describe "#move" do

    it "moves a piece to a blank stick" do
      tower.move(0, 1)
      expect(tower.sticks).to eq([[3, 2], [1], []])
    end

    it "doesn't move a large piece to a small piece" do
      tower.move(0, 1)
      expect { tower.move(0, 1) }.to raise_error(ArgumentError)
    end

    it "moves a small piece to a large piece" do
      tower.move(0, 1)
      tower.move(0, 2)
      tower.move(1, 2)
      expect(tower.sticks).to eq([[3], [], [2, 1]])
    end
  end

  describe "#won?" do

    it "returns true if all of the pieces are in a different stick than the first" do
      tower.sticks = [[], [3, 2, 1], []]
      expect(tower.won?).to be true

      tower.sticks = [[], [], [3, 2, 1]]
      expect(tower.won?).to be true
    end
    it "returns false if the above test isn't met" do
      tower.move(0, 1)
      tower.move(0, 2)
      tower.move(1, 2)
      expect(tower.won?).to be false
    end
  end

end
