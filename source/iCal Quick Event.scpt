on alfred_script(q)
	tell application "iCal" to activate
	
	tell application "System Events"
        # press Command-N:
		keystroke "n" using {command down}

        # type the argument into the quick entry box:
		keystroke "" & q
         
		keystroke return
	end tell
end alfred_script
