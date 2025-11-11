function Get-CapitalWord {
    param (
        [Parameter(Mandatory=$true)]
        [string]$Path
    )

   
    Get-Content $Path | Where-Object { $_ -match '^[A-ZА-Я]' }
}
