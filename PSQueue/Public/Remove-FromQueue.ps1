function Remove-FromQueue
{
    <#
        .SYNOPSIS
         To remove the first item added to the queue, you can call Remove-FromQueue.ps1 or by loading the PSQueue class in the 'Class' folder. 
        .DESCRIPTION
         This function will remove the first item added to the queue.

        .INPUTS
         None

        .OUTPUTS
         PSCustomObject

         Will return the first item added to the Queue using Add-ToQueue.ps1

        .EXAMPLE
         C:\PS>  Remove-FromQueue

         By calling the Remove-FromQueue function directly, it will remove the first item added to the queue

        .NOTES
         Remove-FromQueue will remove the first item that was added to the Queue and return it to the calling scope
    #>

    [CmdletBinding()]
    [Alias()]
    [OutputType()]
    Param
    (
        # Intentionally Left Blank
    )
    
    Write-Verbose -Message 'Get PSQueue Class Object'

    if ([PSQueue]::IsQueueInstance())
    {
        Write-Verbose -Message 'PSQueues exist.  Removing first item from Queue'

        return ([PSQueue]::remove())
    }
}