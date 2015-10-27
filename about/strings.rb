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

  it "can replace lowercase letters with uppercase and returning nil if no changes are made" do
    sLow = "NEW STRING"
    sHeight = sLow.upcase!
    expect(sHeight.nil?).to eq true
  end

  it "can converted uppercase characters to lowercase and lowercase characters to uppercase" do
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

end
