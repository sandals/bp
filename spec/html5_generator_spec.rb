require "spec_helper"

describe BP::Generator::HTML5, '.generate!' do
	it "generates an empty html5 document" do
		html = BP::Generator::HTML5.new
		expected_document = <<HTML
<!doctype html>
<html lang="en">
	<head>
		<meta charset="utf-8">
	</head>
	<body>
	</body>
</html>
HTML

		expect(html.generate!).to eq(expected_document)
	end
end
