module BP
	module Generator
		class HTML5
			def generate!
				return <<HTML
<!doctype html>
<html lang="en">
	<head>
		<meta charset="utf-8">
	</head>
	<body>
	</body>
</html>
HTML
			end
		end
	end
end
