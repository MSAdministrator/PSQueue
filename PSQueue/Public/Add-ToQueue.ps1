function Add-ToQueue
{
    <#
        .SYNOPSIS
         To use the [PSQueue] Class you can call Add-ToQueue.ps1 to create an Enqueue and add to it or by loading the PSQueue class in the 'Class' folder. 
        .DESCRIPTION
         This function will create a new Enqueue and Dequeue if they do not exist and add the passed in item to the Enqueue.

        .PARAMETER PSCustomObject
         Pass in a PSCustomObject to add to the queue

        .INPUTS
         PSCustomObject

         You can create a custom hashtable or object and pipe it into this function

        .OUTPUTS
         None

        .EXAMPLE
         C:\PS>  Add-ToQueue -PSCustomObject [PSCustomObject]$Object

         By calling the Add-ToQueue function directly, it will create a new Queue if not already created and add the passed in PSCustomOjbect to the Queue

        .NOTES
         Add-ToQueue will create a new Queue if not already created and add the passed in PSCustomOjbect to the Queue
    #>

    [CmdletBinding()]
    [Alias()]
    [OutputType()]
    Param
    (
        # Provide a log name
        [Parameter(Mandatory=$true,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        [System.Management.Automation.PSCustomObject]$PSCustomObject
    )
    
    Write-Verbose -Message 'Get PSQueue Class Object'

    $QueueInstance = [PSQueue]::GetInstance()

    Write-Verbose -Message 'Adding PSCustomObject to Enqueue'

    $QueueInstance.Add($PSCustomObject)
}