require 'towers_of_hanoi'

describe TowersOfHanoi do
  subject(:game_at_start) { TowersOfHanoi.new("Luke") }

  describe '#move' do

    it "move if start stack is not empty" do
      game_at_start.stack = [[3,2,1], [], []]

      expect { game_at_start.move(2,0) }.to raise_error
    end

    it "can't move larger discs on smaller discs" do
      game_at_start.stack = [[3,2], [1], []]

      expect { game_at_start.move(0,1) }.to raise_exception
    end

    it "can't move smaller discs on larger discs" do
      game_at_start.stack = [[3], [1], [2]]

      game_at_start.move(1,2)
      expect(game_at_start.stack).to eq([[3], [], [2, 1]])
    end
  end


  describe '#won?' do
    it "false when all discs are in first pile" do
      game_at_start.stack = [[3,2,1], [], []]
      expect(game_at_start.won?).to be false
    end

    it "true when all dics are in second pile" do
      game_at_start.stack = [[], [3,2,1], []]
      expect(game_at_start.won?).to be true
    end

    it "true when all dics are in third pile" do
      game_at_start.stack = [[], [], [3,2,1]]
      expect(game_at_start.won?).to be true
    end
  end
end
