describe "A Ruby String" do
  it "can find and count occurrences of a specified string within a given string" do
    s = "This String is given."
    expect(s.scan(/is/).count).to eq 2
  end
end
