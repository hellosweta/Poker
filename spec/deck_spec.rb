require 'deck.rb'



describe Deck do

  subject(:new_deck) { Deck.new }
  let(:invalid_card) { Card.new("bananas", 10) }

  describe '#initialize' do
    it "should start with 52 cards" do
      expect(new_deck.cards.length).to eq(52)
    end

    it "should have all unique cards" do
      expect(new_deck.cards).to eq(new_deck.cards.uniq)
    end

    subject(:invalid_card) { Card.new("bananas", 10) }


    it "does not allow new invalid cards to be generated" do expect(new_deck.cards).to_not include(invalid_card)
    end
  end

  describe '#shuffle_deck' do
    it "reorders the deck" do
      expect(new_deck.cards).to_not eq(new_deck.shuffle_deck)
    end
  end

  let(:player) { double("player") }
  let(:invalid_card) { Card.new("bananas", 10) }
  describe '#deal' do
    it 'should generate hand object' do
      hand = new_deck.deal
      expect(hand).to be_a Hand
    end

    it 'should remove those 5 cards from deck' do
      new_deck.deal
      expect(new_deck.cards.length).to eq(47)
      new_deck.deal
      expect(new_deck.cards.length).to eq(42)
    end

    it 'should raise error if not enough cards in deck' do
      new_deck.cards = [invalid_card]
      expect { new_deck.deal }.to raise_error
    end


  end
end
