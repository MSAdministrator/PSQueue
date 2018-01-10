# PSQueue
A PowerShell Class that uses Stacks and Queues to process/hold information

## Synopsis
This PowerShell Class currently creates a Queue (FIFO) system from 2 Stacks.  You have the ability to currently submit/add items to the Enqueue and retreive the submitted data from the Dequeue.

## Description
This PowerShell Class currently creates a Queue (FIFO) system from 2 Stacks.  You have the ability to currently submit/add items to the Enqueue and retreive the submitted data from the Dequeue.

This Class can be used directly by loading the 'PSQueue.ps1' file in the 'Class' folder or by using one of the functions contained in the 'Public' folder.  

+ [Add-ToQueue](docs/reference/functions/Add-ToQueue.md)
+ [Remove-FromQueue](docs/reference/functions/Remove-FromQueue.md)

## Using PSQueue Class directly
You can call the PSQueue class directly using the following example:
```powershell
# Create a new queue
$NewQueue = [PSQueue]::new()

# Add to the Queue
$NewQueue.Add([PSCustomObject]$Object)

# Remove first item from the Queue
$FirstQueueItem = $NewQueue.Remove()

```

## Notes
```yaml
   Name: PSQueue
   Created by: Josh Rickard
   Created Date: 01/09/2018
```
## Functionality
This PowerShell Class currently creates a Queue (FIFO) system from 2 Stacks.  You have the ability to currently submit/add items to the Enqueue and retreive the submitted data from the Dequeue.












# PSQueue
A PowerShell Class that uses Stacks and Queues to process/hold information

## Overview
This PowerShell Class currently creates a Queue (FIFO) system from 2 Stacks.  You have the ability to currently submit/add items to the Enqueue and retreive the submitted data from the Dequeue.

## Usage

Adding items to the Enqueue:
```
$newEnqueue = [PSQueue]::new()
$newEnqueue.Add($somedata)
```powershell

Removing data from Dequeue:
```
$newEnqueue.Remove()
```powershell

# NOTE

## This is still a work in progress
