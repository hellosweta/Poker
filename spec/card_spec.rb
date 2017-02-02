require 'card'

describe Card do
  subject(:new_card) { Card.new("hearts", 10) }


  describe '#initialize' do
    it "sets the suit to the passed in value" do
      expect(new_card.suit).to eq("hearts")
    end

    it "sets the rank to the passed in value" do
      expect(new_card.rank).to be(10)
    end


  end
end
