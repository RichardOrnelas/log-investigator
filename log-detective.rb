#!/usr/bin/ruby

# Log List file path
log = "/Users/rich/GitHub/log-investigation/logfile.log"
report = "/Users/rich/GitHub/log-investigation/report.txt"
time_regex = ""

#Add contents of each line in log as an element in the array logsArray
f = File.open("#{log}" , "r")
f.each_line { |line| 
puts "#{line}"

# if line is a date
if line == "2016-*"
# add line to log report
	puts "This is a date"
	puts "#{line}"
else 
	#put into array and count
	puts "this is a log entry"
end
}

#regex
/