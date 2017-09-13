require_relative "card"

class Deck

  def initialize(cards)
    @cards = Array.new
    populate_cards

  end

  def self.populate_cards
    card_values = (1..13).to_a
    card_suits = ['diamonds','clubs','hearts','spades']
    card_arr = []

    card_values.each do |val|
      card_suits.each do |suit|
        card_arr << Card.new(val, suit)
        @cards << card_arr
      end
    end

    @cards

  end

end
