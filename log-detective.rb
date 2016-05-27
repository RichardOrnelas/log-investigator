#!/usr/bin/ruby
# Define Variables
@path = "/log-investigator/logfile.log"
@report = Hash.new
@count = 0
@currDate = nil
@log = Array[]


# Add log lines to the @log Array
File.readlines(@path).each { |l|
  @log.push l.chomp
}
# test
puts "#{@log}"

# Define Date & Count Method
def updateReport(key,value)
  # check to see if it exists in hash
  if @report.has_key? key
    # add to count
    @report[key] = @report[key] + value
  else
    # add to report
    @report[key] = value
  end
end

@log.each{ |logStr|
  # if is a date line
if logStr.start_with?("2")
  # format date
   @date = logStr.sub(/ (\d{2}):(\d{2}):(\d{2})/,'')
  # if currDate is nil, init
   if @currDate == nil
     @currDate = @date
   end
   # if new date
   if @currDate != @date
   # update report
   updateReport(@currDate, @count)
   # reset the count
   @count = 0
   # update currDate
   @currDate = @date
   end
 else
   # same date, log line, increment counter
   @count += 1
end
}

#update last value
updateReport(@currDate, @count)

@report.each {|key, value| print "#{key} - #{value}\n"}
