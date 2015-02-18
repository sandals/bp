module BP
	class CLI
		def initialize(filename)
			@filename = filename
			@generator = guess_generator
		end
		
		def create_file
			file_contents = @generator.generate!
			File.open(@filename, "w") do |f|
				f.write(file_contents)
			end
		end

		def guess_generator
			filename = File.extname(@filename)

			case filename
			when ".html"
				BP::Generator::HTML5.new
			else
				BP::Generator::NullGenerator.new
			end
		end
	end
end

