describe "Blocks and yield" do
	it "can be stored in variables and used on demand" do
		addition = lambda {|a, b| return a + b }

		expect(addition.call(5, 6)).to eq(11)
	end
	
	it "is a sub-class of Object" do
		empty_block = lambda { }
		expect(empty_block.class.superclass).to eq(Object)
	end
end