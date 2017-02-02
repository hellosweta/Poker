require 'hand'

describe Hand do
  let(:card_one) { double("card_one", rank: 4, suit: "hearts") }
  let(:card_two) { double("card_two", rank: 4, suit: "spades") }
  let(:card_three) { double("card_three", rank: 4, suit: "diamonds") }
  let(:card_four) { double("card_four", rank: 4, suit: "clovers") }
  let(:card_five) { double("card_five", rank: 5, suit: "diamonds") }
  let(:card_six) { double("card_six", rank: 5, suit: "hearts") }
  let(:card_seven) { double("card_seven", rank: "jack", suit: "diamonds") }
  let(:card_eight) { double("card_eight", rank: "ace", suit: "diamonds") }

  subject(:test_hand_quad) { Hand.new([card_one, card_two, card_three, card_four, card_five]) }

  describe '#initialize' do
    it "uses passed value to create hand array" do
      expect(test_hand_pair.hand_cards.length).to eq(5)
    end
  end

  subject(:test_hand_pair) { Hand.new([card_one, card_two, card_five, card_seven, card_eight]) }

  subject(:test_hand_triple) { Hand.new([card_one, card_two, card_three, card_seven, card_eight]) }

  subject(:test_hand_two_pair) { Hand.new([card_one, card_two, card_five, card_six, card_eight]) }

  describe '#pairs' do

    it "returns 1 if hand contains pair" do
      expect(test_hand_pair.pairs).to be(1)
    end

    it "returns 0 if hand contains triple" do
      expect(test_hand_triple.pairs).to be(0)
    end

    it "returns 2 if hand contains two pairs" do
      expect(test_hand_two_pair.pairs).to be(2)
    end

  end

end
