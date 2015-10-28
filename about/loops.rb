describe "Loops in Ruby" do
  it "can be accomplished with for" do
  	x = 0
    for i in 0..9 do
    	x += 1
    end
    expect(x).to eq 10
  end
  
  it "can be accomplished with times" do
  	x = 0
    10.times do x
    	x += 1
    end
    expect(x).to eq 10
  end
  
  it "can be accomplished with upto" do
  	x = 0
    0.upto(9) do x
    	x += 1
    end
    expect(x).to eq 10
  end

  it "can be accomplished with each" do
  	i = 0
    (0..9).each do
    	i += 1
    end
    expect(i).to eq 10
  end

  it "can be accomplished with while" do
  	i = 0
  	while i<10 do
  		i += 1
  	end
  	expect(i).to eq 10
  end

  it "can be accomplished with begin - while" do
  	i = 0
  	begin
  		i += 1
  	end while i<10
  	expect(i).to eq 10
  end

  it "can be accomplished with until" do
  	i = 0
  	until i>=10
  		i += 1
  	end
  	expect(i).to eq 10
  end

  it "can be accomplished with begin - until" do
  	i = 0
  	begin 
  		i += 1
  	end until i>=10
  	expect(i).to eq 10
  end

end