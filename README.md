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
