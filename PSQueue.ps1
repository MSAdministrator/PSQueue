class PSQueue
{
    $Enqueue
    $Dequeue

    PSQueue ()
    {
        # create a new incoming stack
        $this.Enqueue = [System.Collections.Stack]::new()
        # create a new outgoing stack
        $this.Dequeue = [System.Collections.Stack]::new() 
    }
    
    [void] Add($obj)
    {
        $this.Enqueue.push($obj)
    }
    # Add to incoming stack

    [string] Remove()
    {
        if ($this.Dequeue.count -eq 0)
        {
            do
            {
                $this.Dequeue.push($this.Enqueue.pop())
            }until ($this.Enqueue.count -eq 0)
        }
        return $this.Dequeue.pop()
    }
}
