on alfred_script(q)
	set the clipboard to "" & q
	tell application "iCal" to activate
	tell application "System Events"
		keystroke "n" using {command down}
		keystroke "v" using {command down}
		keystroke return
	end tell
end alfred_script