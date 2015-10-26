# this is an example for writing a test cheat sheet for Ruby Classes.

describe "A Ruby Class" do
  it "reflects on its Class" do
    class X
    end
    class U
    end
    x = X.new
    expect(x.class).to eq X
    expect(x.class).not_to eq U
  end
  it "can have fields (instance variables)" do
    class Boat
      def name= new_name
        @name = new_name
      end
      def name
        @name
      end
    end
    boat = Boat.new
    boat.name = "Pinguin"
    expect(boat.name).to eq "Pinguin"
  end
#WS2014 split constructor and attr_accessor in two examples.
  it "has constructors and a shorthand for defining getters/setters" do
    class Boat
      attr_accessor :name, :length
      def initialize(name,length)
        @name, @length = name, length
      end
    end

    boat = Boat.new("Hib",4)
    expect(boat.name).to eq "Hib"
    expect(boat.length).to eq 4
  end
#WS2014: split between class variables and methods and the number_of_instances
  it "can have class variables and methods" do
    class NotASingleton
      @@instances = 0
      def initialize
        @@instances +=1
      end
      def self.number_of_instances
        @@instances
      end
    end
    a = NotASingleton.new
    b = NotASingleton.new
    expect(NotASingleton.number_of_instances).to eq 2
  end
end
