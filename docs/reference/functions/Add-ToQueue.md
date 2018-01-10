# Add-ToQueue
A PowerShell Class that uses Stacks and Queues to process/hold information

## Synopsis
This PowerShell Class currently creates a Queue (FIFO) system from 2 Stacks.  You have the ability to currently submit/add items to the Enqueue and retreive the submitted data from the Dequeue.

### Add-ToQueue

```powershell
C:\PS>  Add-ToQueue -PSCustomObject [PSCustomObject]$Object

By calling the Add-ToQueue function directly, it will create a new Queue if not already created and add the passed in PSCustomOjbect to the Queue
```

## SYNTAX

```powershell
C:\PS>  Add-ToQueue -PSCustomObject [PSCustomObject]$Object

By calling the Add-ToQueue function directly, it will create a new Queue if not already created and add the passed in PSCustomOjbect to the Queue
```

## DESCRIPTION
This function will create a new Enqueue and Dequeue if they do not exist and add the passed in item to the Enqueue.

## PARAMETER PSCustomObject
Pass in a PSCustomObject to add to the queue

## INPUTS
PSCustomObject

You can create a custom hashtable or object and pipe it into this function

## OUTPUTS
None

## EXAMPLE
```powershell
C:\PS>  Add-ToQueue -PSCustomObject [PSCustomObject]$Object

By calling the Add-ToQueue function directly, it will create a new Queue if not already created and add the passed in PSCustomOjbect to the Queue
```

## NOTES
Add-ToQueue will create a new Queue if not already created and add the passed in PSCustomOjbect to the Queue

## RELATED LINKS