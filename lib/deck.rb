class Deck
  attr_reader :cards
  def initialize (cards)
    @cards = cards
  end
  def count
    cards.count
  end
  def cards_in_category(string)
    card_category = cards.select do |card|
      card.category == string
    end
    
    
  end



end

