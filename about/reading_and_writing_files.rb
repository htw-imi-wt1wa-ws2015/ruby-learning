
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

    it "should check the existence of a file" do
        expect(File.exist?(@path)).to be(true)
    end

    it "should append to a file" do
        handler = File.open(@path, "a")
        handler.puts("New line")
        handler.close

        content = File.read(@path)
        expect(content).to eq("Hello World\nNew line\n")
    end

    it "opens a file and copies the content to another" do
        dst = File.new("copy.txt", "w")

        File.open(@path, "r") do |cnt|
            cnt.each_line do |line|
                dst.write(line)
            end
        end

        dst.close
        expect(File.read(dst)).to eq("Hello World\nNew line\n")

        File.delete(dst)
    end

end
