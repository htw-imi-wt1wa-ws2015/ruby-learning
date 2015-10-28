describe "A Ruby String" do
  it "can find and count occurrences of a specified string within a given string" do
    s = "This String is given."
    expect(s.scan(/is/).count).to eq 2
  end

  it "can replace uppercase letters with lowercase" do
    sHigh = "NEW STRING"
    sLow = sHigh.downcase
    expect(sLow == "new string").to eq true
  end

  it "can replace uppercase letters with lowercase returning nil if no changes are made" do
    s = "new string"
    sLow = s.downcase!
    expect(sLow.nil?).to eq true
  end

  it "can replace lowercase letters with uppercase" do
    sLow = "new string"
    sHeight = sLow.upcase
    expect(sHeight == "NEW STRING").to eq true
  end

  it "can replace lowercase letters with uppercase and return nil if no changes are made" do
    sLow = "NEW STRING"
    sHeight = sLow.upcase!
    expect(sHeight.nil?).to eq true
  end

  it "can convert uppercase characters to lowercase and lowercase characters to uppercase" do
    s = "neW StrinG"
    newS = s.swapcase
    expect(newS == "neW StrinG").to eq false
    expect(newS == "NEw sTRINg").to eq true
  end

  it "can convert objects into a String" do
    s = String.try_convert("str")
    t = String.try_convert(/t/)
    expect(s.is_a? String).to eq true
    expect(t.is_a? String).to eq false
  end

  it "can be connected to another String" do
    string = "it would be nice to have an exclamation point"
    string.concat("!")
    expect(string.include?('!')).to eq true
  end
  
  it "can be trimmed" do
    string = "  i doesn't want blanks at start and end  "
    string.strip!
    expect(string.length).to eq 38
  end

  it "can be cut" do
    string = "0123456789"
    string.slice!(5..-1)
    expect(string.length).to eq 5
  end

  it "can be separated to an array" do
    string = "1 2 3 4 5 6 7 8 9"
    # without arguments strings get split on blanks
    array = string.split
    expect(array.length).to eq 9
  end

  it "can be searched" do
    string = "search for something"
    expect(string.include?("something")).to eq true
    expect(string.include?("mouse")).to eq false
  end

  it "can be replaced" do
    string = "aaabbbcccdddeeefff"
    string.gsub!('a','X')
    expect(string.include?('XXX')).to eq true
  end

  it "can be multiplied" do
    string = "muh! "
    string = string * 3
    expect(string == "muh! muh! muh! ").to eq true
  end

end
