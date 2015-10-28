
describe 'Iteration Idioms' do
  describe '#each' do
    it 'iterates over arrays' do
      # ok for demonstration but don't do this. use String#join or Enumerable#reduce
      string = ''
      ['a','b','c'].each { |char| string += char }
      expect(string).to eq 'abc'
    end

    it 'iterates over hashes' do
      keys = ''
      sum = 0
      hash = {a: 1, b: 2, c: 3}
      hash.each do |key, value|
        keys += key.to_s
        sum += value
      end

      expect(keys).to eq 'abc'
      expect(sum).to eq 6
    end
  end

  describe '#upto' do
    # #downto is the same thing just downwards.
    it 'loops from a to b' do
      count = 0
      5.upto(10) do |n|
        count += 1
      end
      expect(count).to eq 6
    end

    it 'does not do anything with a > b' do
      5.upto(4) { fail 'should never get here' }
    end
  end

  describe '#times' do
  # n starts at 0 
    it 'loops n times' do
      count = 0
      10.times { count += 1 }
      expect(count).to eq 10
    end
  end

  describe '#step' do
    it 'iterates through a range in steps' do
      (2..10).step(2) { |n| expect(n % 2).to eq 0 }
    end
  end
end