on zero_pad(value, string_length)
	set string_zeroes to ""
	set digits_to_pad to string_length - (length of (value as string))
	if digits_to_pad > 0 then
		repeat digits_to_pad times
			set string_zeroes to string_zeroes & "0" as string
		end repeat
	end if
	set padded_value to string_zeroes & value as string
	return padded_value
end zero_pad

# get YYYY
tell (current date) to get (it's year as integer)
set the_year to the result as text

# get MM
tell (current date) to get (it's month as integer)
set the_month to zero_pad(the result, 2) as text

# get DD
tell (current date) to get (it's day as integer)
set the_day to zero_pad(the result, 2) as text


set the clipboard to the_year & "-" & the_month & "-" & the_day
