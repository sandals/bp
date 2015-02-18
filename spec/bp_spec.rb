require "bp"

def tear_down
	File.delete("index.html")
end

describe "BP" do
	it "generates a file with given name" do
		bp = BP::CLI.new("index.html")
		bp.create_file

		expect(File.exists?("index.html")).to be(true)
		tear_down
	end

	it "guesses what generator to use based upon the filename" do
		bp = BP::CLI.new("index.html")
		bp.create_file

		file_contents = BP::Generator::HTML5.new.generate!
		
		expect(File.read("index.html")).to eq(file_contents)
		tear_down
	end
end
