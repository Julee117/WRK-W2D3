require 'card'
require 'deck'

describe Card do
  subject(:card) { Card.new(11,'diamonds') }

  describe '#initialize' do
    it 'should return num/suit of card' do
      expect(card.num).to eq(11)
      expect(card.suit).to eq('diamonds')

    end
  end

end
#
describe Deck do
  subject(:cards) {Deck.new}

  describe '#initialize' do
    it 'should create 52 card deck' do

      expect(cards.populate_cards.length).to eq(52)
    end
  end
end
