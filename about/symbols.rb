describe "A Ruby symbol" do
  it "will have the same symbol object while strings do not" do
    foo1 = :Happy
    foo2 = :Happy
    foo3 = "Happy"
    foo4 = "Happy"
    expect(foo1.object_id).to eq foo2.object_id
    expect(foo3.object_id).not_to eq foo4.object_id
  end
end