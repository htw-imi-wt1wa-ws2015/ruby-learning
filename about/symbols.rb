describe "A Ruby symbol" do
  it "will have the same symbol object while strings do not" do
    foo1 = :Happy
    foo2 = :Happy
    foo3 = "Happy"
    foo4 = "Happy"
    expect(foo1.object_id).to eq foo2.object_id
    expect(foo3.object_id).not_to eq foo4.object_id
  end

  it "can return all symbols currently in the symbol table" do
    all = Symbol.all_symbols
    expect(all.size).to be > 0
  end

  it "can return the corresponding string" do
    foo1 = :Hello
    expect(foo1.id2name).to eq "Hello"
  end

end