# 28th October 2015
# Referenz: http://ruby-doc.org/core-2.2.3/Array.html
# Tu Tran Thi Ngoc, Christina Gutenberg, Nadine Lüdicke

describe "A Ruby Array" do
  let(:array) { [1, 'two', 3.0, 4, 5] }

  it "can have multiple elements" do
    expect(array.length).to eq 5
  end

  it "can get filled" do
    expect(Array.new(3, true)).to eq [true, true, true]
  end

  it "can return a specific element" do
    expect(array[3]).  to eq 4
    expect(array[100]).to eq nil
    expect(array[-2]). to eq 4
  end

  it "can return the first element" do
    expect(array.first).to eq 1
  end

  it "can return the last element" do
    expect(array.last).to eq 5
  end

  it "can return values at specified indices as an Array" do
    expect(array.values_at(1, 3, 4)).   to eq ['two', 4, 5]
    expect(array.values_at(0..2, 3..4)).to eq array
  end

  it "can be reversed" do
    expect(array.reverse!).to eq [5, 4, 3.0, 'two', 1]
  end
end
