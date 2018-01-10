# PSQueue

## SYNOPSIS
To use the PSQueue Class you need to either call the Add-ToQueue.ps1 or by loading the entire PSLogging class in the 'Class' folder.  

### Add-ToQueue

```powershell
C:\PS>  Add-ToQueue -PSCustomObject [PSCustomObject]$Object

By calling the Add-ToQueue function directly, it will create a new Queue if not already created and add the passed in PSCustomOjbect to the Queue
```

## DESCRIPTION
The LogFile Class has a single property that can be set.  This is the location or path to the log file you want to either create or use when logging.  After creating your new variable ($LogFileClass) you can use it to log information to a specified log file.  All sub-classes have a log 'level' that you can use when logging:

## EXAMPLES

### Example 1
You can call the PSQueue class directly using the following example:

```powershell
# Create a new queue
$NewQueue = [PSQueue]::new()

# Add to the Queue
$NewQueue.Add([PSCustomObject]$Object)

# Remove first item from the Queue
$FirstQueueItem = $NewQueue.Remove()

```

## INPUTS

### [PSCustomObject]
### Pass in a PSCustomObject when adding to the Queue

## OUTPUTS
[PSCustomObject]

## Notes
```yaml
   Name: PSQueue
   Created by: Josh Rickard
   Created Date: 01/09/2018
```
## Functionality
This PowerShell Class currently creates a Queue (FIFO) system from 2 Stacks.  You have the ability to currently submit/add items to the Enqueue and retreive the submitted data from the Dequeue.



