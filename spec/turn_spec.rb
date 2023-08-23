require './lib/turn'
require './lib/card'
require 'pry'

RSpec.describe Card do 
  it 'exists' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    expect(card).to be_instance_of(Card)
  end

  it 'has a guess?' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    turn = Turn.new("Juneau", card)
    expect(card).to be_instance_of(Card)
    expect(turn).to be_instance_of(Turn)
  end
  it "tells if you're correct!" do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    turn = Turn.new("Juneau", card)
    expect(turn.correct?).to eq(true)
  end

    it "give's positive feedback if you're correct" do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    turn = Turn.new("Juneau", card)

    expect(turn.feedback).to eq("Correct!")

  end
  it "tells if you're incorrect" do
    card = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
    turn = Turn.new("Saturn", card)
    expect(turn.correct?).to eq(false)
  end
  
  it "give's negative feedback if you're incorrect" do
    card = Card.new("Which planet is closest to the sun?", "Mercury", :STEM)
    turn = Turn.new("Saturn", card)

    expect(turn.feedback).to eq("Incorrect.")
  end



end
