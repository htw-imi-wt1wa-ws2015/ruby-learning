describe "A Hash in Ruby" do

	myhash = {key: "value"}

	describe "Creating" do
		it "should create a hash by assignment" do
			expect(myhash.class).to eq Hash 
		end
		it "should create a hash using new statement" do
			my_new_hash = Hash.new
			
			expect(myhash.class).to eq Hash
		end
		it "should create a hash using the rocket" do
			my_second_hash = {"key" => 7}
			
			expect(myhash.class).to eq Hash
			expect(my_second_hash.class).to eq Hash
		end
	end

	describe "Accessing" do
		it 'should return nil if accessing key which does not exist' do
			expect(myhash[0]).to eq nil
		end
		it 'should return the value for a specific key' do
			expect(myhash[:key]).to eq "value"
		end
		it 'should return true if the key is present for a given value' do
			expect(myhash.has_value?("value")).to eq true
		end
		it 'should return false if the key isn´t present for a given value' do
			expect(myhash.has_value?("false_value")).to eq false
		end
		it 'should return true if the key is present in the hash' do
			expect(myhash.has_key?(:key)).to eq true
		end
		it 'should return false if the key isn´t present in the hash' do
			expect(myhash.has_value?(:false_key)).to eq false
		end
	end
	describe "Deleting" do
		it 'should delete the key value pair and returns the value from the hash whose key is equal to passed key' do
			expect(myhash.delete(:key)).to eq "value"
		end
	end

end