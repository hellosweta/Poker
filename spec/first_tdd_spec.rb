require 'first_tdd'


describe "#uniq" do
  it "returns a unique array when given unique array" do
    expect([1,4,6,3,6].my_uniq).to eq([1,4,6,3])
  end

  it "returns an empty array when given empty array" do
    expect([].my_uniq).to eq([])
  end

  it "returns an array which incldues one copy of duplicate elements" do
    expect([1,6,4,6,3,6].my_uniq).to eq([1,6,4,3])
  end

  it "returns unique elements in the order in which they first appeared" do
    expect([1,6,4,6,3,6].my_uniq).to eq([1,6,4,3])
  end

end


describe '#two_sum' do

  it "returns an array of indices that sum to zero" do
    expect([1, -1, 2, -2].two_sum).to eq([[0, 1], [2, 3]] || [[2, 3], [0, 1]])
  end

  it "returns indices in order" do
    expect([1, -1, 2, -2].two_sum).to eq([[0, 1], [2, 3]])
  end

  it "returns an empty array if no indices sum to zero" do
    expect([1, 2, 3, 4].two_sum).to eq([])
  end

end

describe '#transpose' do
  it "should return empty 2D array when input empty" do
    expect([[]].my_transpose).to eq([[]])
  end

  it "should return transposed array" do
    expect([
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ].my_transpose).to eq([
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]])
  end


end


describe '#stock_picker' do

  it "should return indices when stock price is increasing" do

    expect(stock_picker([10, 15, 20])).to eq([0, 2])

  end


  it "should return indices for greatest difference" do
    expect(stock_picker([5, 2, 4, 3, 10, 20])).to eq([1, 5])
  end

end
