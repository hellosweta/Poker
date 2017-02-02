require_relative 'card'
require_relative 'hand'

class Deck

  attr_accessor :cards

  SUITS = [:hearts, :spades, :clovers, :diamonds]

  RANKS = [:ace, :two, :three, :four, :five, :six, :seven,
           :eight, :nine, :ten, :jack, :queen, :king]


  def initialize
    @cards = generate

  end

  def generate
    output = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        output << Card.new(suit, rank)
      end
    end
    output
  end

  def shuffle_deck
    @cards.shuffle
  end

  def deal
    shuffle_deck
    if @cards.length > 5
      hand = [@cards.pop(5)]
      Hand.new(hand)
    else
      raise "Not enough cards!"
    end
  end
end
