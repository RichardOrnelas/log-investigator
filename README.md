# log-investigator
Log parser with content control

## Log Investigation

Your goal is to write a script to process the following log file example and
produce the date and count of entries for each day using Ruby.

## Requirements

You have a log file that looks like the following:

> 2016-04-16 05:23:52 <br \>
> |845| some log entry content <br \>
> |815| some log entry content <br \>
> |842| some log entry content <br \>
> 2016-04-16 05:24:52 <br \>
> |845| some log entry content <br \>
> |835| some log entry content <br \>
> |851| some log entry content <br \>
> |745| some log entry content <br \>
> 2016-04-18 05:23:52 <br \>
> |845| some log entry content <br \>
> |815| some log entry content <br \>
> 2016-04-20 05:23:52 <br \>
> |845| some log entry content <br \>
> |815| some log entry content <br \>
> |845| some log entry content <br \>
> |815| some log entry content <br \>

### Example Output

> 2016-04-16 - 7 <br \>
> 2016-04-18 - 2 <br \>
> 2016-04-20 - 4 <br \>
