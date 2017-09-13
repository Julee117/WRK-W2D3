require 'TDD'

describe 'Array#uniq' do

  it "should remove duplicates and return unique elements" do
    expect([1,2,1,3,3].uniq).to eq([1,2,3])
  end

end

describe 'Array#two_sum' do

    it "should find all pairs with sum of zero" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end
end

describe 'Array#my_transpose' do

  it "should transpose a two-dimensional grid of numbers" do
    expect([[0, 1, 2], [3, 4, 5], [6, 7, 8]].my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
  end
end

describe 'Array#stockpicker' do
  it "should find most profitable trade, return best buy/sell days (indices)" do
    expect([21,25,18,32,45].stockpicker).to eq([2,4])
  end
end

describe '#initialize' do
  subject(:game) do
    TowersOfHanoi.new
  end

  it 'should iniitalizes with correct towers' do
    expect(game.model_set).to eq([[3,2,1],[],[]])
  end
end

describe '#start_move' do
  subject(:game) do
    TowersOfHanoi.new
  end

    it 'should raise error if start is empty' do
    expect{game.start_move(1)}.to raise_error ('Empty pile. Pick another')

    game.model_set = [[],[1],[3,2]]
    expect{game.start_move(0)}.to raise_error ('Empty pile. Pick another')
  end
end

describe '#move' do
  subject(:game) do
    TowersOfHanoi.new
  end

  it 'should raise error if next pile is invalid' do
    game.model_set = [[],[1],[2]]
    expect{game.move(3, 1)}.to raise_error ("Invalid pile. Pick another")
  end
end

describe '#move' do
  subject(:game) do
    TowersOfHanoi.new
  end

  it 'should move disc to next pile' do
    game.model_set = [[],[1],[3]]
    expect(game.move(2, 0)).to eq([[2], [1], [3]])
  end
end

describe '#won?' do
  subject(:game) do
    TowersOfHanoi.new
  end

  it 'should congratulate player' do
    game.model_set = [[], [], [3, 2, 1]]
    expect{game.won?}.to raise_error ("Congratulations! You won!")
  end
end
