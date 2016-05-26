#!/usr/bin/ruby

# Log List file path
report = "/Users/rich/GitHub/log-investigator/report.txt"

# Second Approach
c = 0
d = "0"
# Variables
file = "/Users/rich/GitHub/log-investigator/logfile.log"
#date and count
File.readlines(file).each { |l|
  #puts l
#If line is a date and there is no count
	if l.start_with?("2")
		#format log date
		ld = l.sub(/ (\d{2}):(\d{2}):(\d{2})/,'')
		if ld != d
			d = ld
			# Record log date
			puts d
			#reset the counter
			c = 0
			puts "counter is now reset"
		else
			c += 1
		end
		#record count
		if c != 0
			puts c
		end
	else
		c += 1
		puts c
end
}


# write to a file
