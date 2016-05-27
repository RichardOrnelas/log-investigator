# Define Variables
@path = "/Users/rich/GitHub/log-investigator/logfile.log"
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
