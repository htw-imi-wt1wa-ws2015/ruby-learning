describe "Method definitions" do
  it "return a sum from a addFunction" do
    class Calculator
      def add_two_numbers(x, y)
        x+y
      end
    end
    calc = Calculator.new
    expect(calc.add_two_numbers(1, 1)).to eq 2
  end

  it "can have default values for unpassed parameters" do
    def do_it_by_default(value = 'default')
      value
    end
    expect(do_it_by_default).to eq 'default'
    expect(do_it_by_default('myValue')).to eq 'myValue'
  end

  it "can use return instead of returning the last executed statement" do
    def use_return()
      return 1
    end
    def use_no_return()
      1
    end
    expect(use_return).to eq 1
    expect(use_no_return).to eq 1
  end
end  
