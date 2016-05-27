# log-investigator
Log parser with content control

## Log Investigation

Your goal is to write a script to process the following log file example and
produce the date and count of entries for each day using Ruby.

## Requirements

You have a log file that looks like the following:

> 2016-04-16 05:23:52
> |845| some log entry content
> |815| some log entry content
> |842| some log entry content
> 2016-04-16 05:24:52
> |845| some log entry content
> |835| some log entry content
> |851| some log entry content
> |745| some log entry content
> 2016-04-18 05:23:52
> |845| some log entry content
> |815| some log entry content
> 2016-04-20 05:23:52
> |845| some log entry content
> |815| some log entry content
> |845| some log entry content
> |815| some log entry content
### Example Output

> 2016-04-16 - 7
> 2016-04-18 - 2
> 2016-04-20 - 4
