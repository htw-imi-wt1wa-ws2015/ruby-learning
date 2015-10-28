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

  it 'can be made from strings' do
    test_string = "Foo"
    expect(test_string.to_sym).to eq :Foo
  end

  it 'can have spaces' do
    sym = :"foo bar baz"
    expect("foo bar baz".to_sym).to eq sym
  end

  it 'gets converted to a string when interpolated' do
    sym = :foo
    str = "bar #{sym} baz"
    expect(str).to eq "bar foo baz"
  end

  it 'can be build with interpolation' do
    str = "bar"
    sym = :"foo#{str}baz"
    expect(sym).to eq :foobarbaz
  end

  it 'is not a string' do
    sym = :foo 
    expect(sym.is_a?(String)).to be_falsy
    expect(sym.eql?("foo")).to be_falsy
  end

  it 'can not be concatenated' do
    expect{:foo + :bar}.to raise_error(NoMethodError)
  end

  it 'can be created dynamically' do
    expect(("foo" + "bar").to_sym).to eq :foobar
  end

end
