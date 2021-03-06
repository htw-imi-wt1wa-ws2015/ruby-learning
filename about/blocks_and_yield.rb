describe "Blocks and yield" do
	
	#---BLOCKS------------------------------------------------------
	
	it "can be stored in variables and used on demand" do
		addition = lambda {|a, b| return a + b }

		expect(addition.call(5, 6)).to eq(11)
	end
	
	it "is a sub-class of Object" do
		empty_block = lambda { }
		expect(empty_block.class.superclass).to eq(Object)
	end
	
	#---YIELD------------------------------------------------------
	
	def test_method1
		result = yield 42
		result
	end
	
  	it "can pass parameters with the yield statement" do  
		teststring = test_method1 {|i| "The answer is #{i}"}
		expect("The answer is 42" == teststring).to eq true
  	end
  	
  	def test_method2
    		yield("Test")
  	end

  	it "can take arguments" do  
    		test_method2 do |argument|
		expect("Test" == argument).to eq true
  	end
end
end