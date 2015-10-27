# All examples based on the documentation for enumerators
# taken from http://ruby-doc.org/core-2.2.3/Enumerable.html
#
# @author James Britt and Neurogami
# 27th October 2015

describe "Enumerator" do
  let(:fixnum) { (1..4) }

  describe "#map" do
    it "returns a new array with the results of running block once for every element in enum" do
      expect(fixnum.map { |i| i * i }).to eq [1, 4, 9, 16]
    end
  end

  describe "#collect" do
    it "returns enumerator if no block is given" do
      expect(fixnum.collect { 'cat' }).to eq ['cat', 'cat', 'cat', 'cat']
    end
  end

  describe "#inject" do
    it "returns sum of numbers" do
      expect(fixnum.inject { |sum, n| sum + n }).to eq 10
    end

    it "returns mul of numbers" do
      expect(fixnum.inject(1) { |product, n| product * n }).to eq 24
    end

    it "returns the longest word" do
      longest = %w{ cat sheep bear }.inject do |memo, word|
        memo.length > word.length ? memo : word
      end

      expect(longest).to eq 'sheep'
    end
  end
end
