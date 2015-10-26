
describe "reading and writing files" do

    before(:all) do
        @path = "new_file"
        test_file = File.new(@path, "w")
        test_file.puts("Hello World")
        test_file.close
    end

    after(:all) do
        File.delete(@path)
    end

    it "writes content to a file" do
        file = File.new("test.txt", "w")
        text = "Hello world !"
        file.puts(text)
        file.close
        content = File.read(file)
        expect(content).to eq "Hello world !\n"
        File.delete(file)
    end
end
