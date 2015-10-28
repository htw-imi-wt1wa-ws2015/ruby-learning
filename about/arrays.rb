# 28th October 2015
# Referenz: http://ruby-doc.org/core-2.2.3/Array.html
# Tu Tran Thi Ngoc, Christina Gutenberg, Nadine Lüdicke

describe "Array" do
  it "has five elements" do
    a = Array.new(5)
    a = [1, "two", 3.0, 4, 5]
    expect(a.length).to eq 5
  end
  
  it "gets filled" do
    a = Array.new(3, true)
    expect(a).to eq([true, true, true])
  end
  
  it "returns specific element" do
    a = [1, 2, 3, 4, 5, 6]
    expect(a[3]).to eq(4)
    expect(a[100]).to eq(nil)
    expect(a[-2]).to eq(5)
  end
  
  it "return first element" do
    a = [1, 2, 3, 4, 5, 6]
    expect(a.first).to eq(1)
  end
 
  it "return last element" do
    a = [1, 2, 3, 4, 5, 6]
    expect(a.last).to eq(6)
  end
  
  it "return value at indices" do
    a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    expect(a.values_at(1,3,5)).to eq([2,4,6])
    expect(a.values_at(3..6, 2..4)).to eq([4,5,6,7,3,4,5])
  end
  
  it "returns reversed" do
    a = ["a", "b", "c", "d"]
    expect(a.reverse!).to eq (["d", "c", "b", "a"])
  end
  
end