require './lib/card'
require './lib/deck'

RSpec.describe Card do 
 it 'card 1' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    expect(card_1).to be_instance_of(Card)
  end
  
  it 'card 2' do
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
  
    expect(card_2).to be_instance_of(Card)
  end

  it 'card 3' do
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    expect(card_3).to be_instance_of(Card)
  end

  it 'deck can contain cards' do
  card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
  card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

  cards = [card_1, card_2, card_3]
  deck = Deck.new(cards)
  
  expect(cards).to eq([card_1, card_2, card_3])
  expect(deck).to be_instance_of(Deck)
  end

  it 'contains 3 cards' do
  card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
  card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

  cards = [card_1, card_2, card_3]
  deck = Deck.new(cards)

  expect(deck.count).to eq(3)
  end
  
  it 'can separate cards by categories' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_1, card_2, card_3]
    deck = Deck.new(cards)

    expect(deck.cards_in_category(:STEM)).to eq([card_2, card_3])
    expect(deck.cards_in_category(:Geography)).to eq([card_1])
  end
end
