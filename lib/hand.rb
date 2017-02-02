class Hand

  attr_reader :hand_cards

  def initialize(hand_cards)
    @hand_cards = hand_cards
  end

  def evaluate
    card_hash = {}
    @hand_cards.each do |card|
      card_hash[card.rank] = card.suit
    end

    card_ranks = card_hash.keys
    card_suits = card_hash.values

    if card_suits == card_suits.uniq
      return 1
    elsif card_suits == card.suits.uniq && card_ranks.s

   end

  def same_rank
    rank_arr = []

    @hand_cards.each do |card|
      rank_arr << card.rank
    end

    frequency = {}

    rank_arr.each do |rank|
      frequency[rank] = rank_arr.count(rank)
    end

    frequency
    # counter = 0
    # pairs = []
    # frequency.each do |rank, freq|
    #   if freq == 2
    #     counter  += 1
    #     pairs << rank
    #   end
    # end
    # pairs
  end

end
