$processes = Get-Process

$properties = $processes | Select-Object -First 1 | Get-Member -MemberType Properties | Select-Object -ExpandProperty Name

$properties | Out-File "Z:\ossst\lab3\process_properties.txt"

"Общее количество свойств: $($properties.Count)"
Pause
