on alfred_script(q)	
	tell application "Google Chrome"
		activate
		set w to make new window
		set URL of active tab of w to my searchUrl(q)
	end tell
end alfred_script

to searchUrl(input)
	return "https://www.google.com/search?q=" & input
end searchUrl
