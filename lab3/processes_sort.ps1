Get-Process |
    Where-Object { $_.CPU -gt 5 } |
    Sort-Object Id |
    Select-Object Id, Name, WorkingSet, CPU |
    Out-File "Z:\ossst\lab3\process_list.txt"
