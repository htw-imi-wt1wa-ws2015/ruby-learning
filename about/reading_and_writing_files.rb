describe "reading and writing files" do
    it "writes content to a file" do
        file = File.new("test.txt", "w")
        text = "Hello world !"
        file.puts(text)
        file.close
        content = File.read(file)
        expect(content).to eq "Hello world !\n"
    end
end
