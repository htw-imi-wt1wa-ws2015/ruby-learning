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
end  
