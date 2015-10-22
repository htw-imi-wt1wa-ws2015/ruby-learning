
describe "About RSpec Build-in Matchers" do

# this is a selection of some of the rspec expectations
# you can use;
# see also
# https://www.relishapp.com/rspec/rspec-expectations/v/3-3/docs/built-in-matchers


  it "value equality" do
    expect(5.0).to eq 5
    expect(3.2).not_to eq 3
  end

  it "object identity" do
    p = o = Object.new
    expect(o).to equal(p)
    # or
    expect(o).to be(p)

    q = Object.new
    expect(q).not_to be(p)
  end

  it "has predicate matchers" do
    empty_array = []
    expect(empty_array).to be_empty
    # which is the sam eas
    expect(empty_array.empty?).to eq(true)
  end

  it "predicate matchers work for arbitrary predicates" do
    class SpecialSauce
      def special?
        true
      end
    end
    expect(SpecialSauce.new).to be_special
  end

  it "this includes include/predicates with parameters" do
    expect([1,2,3]).to include(3)
  end

  it "can check for Exceptions" do
    class MyError < Exception
    end
    expect { raise MyError.new }.to raise_error(MyError)
  end

  it "what happens if you just use expect" do
    # this looks reasonable
    expect(1 == 1)
    # but this works, too
    expect(1 == 2)
    # in fact, all that does is returning an
    expect(expect(1 == 3).class).to eq RSpec::Expectations::ExpectationTarget
  end

end
