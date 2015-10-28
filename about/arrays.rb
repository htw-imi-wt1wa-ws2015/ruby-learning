#
#28th October 2015

describe 'Arrays' do
  it 'has five elements' do
    a = Array.new(5)
    a = [1, "two", 3.0, 4, 5]
    expect(a.length).to eq[5]
  end
end




