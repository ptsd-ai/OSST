$N = 10
$dirTimes = @()
$psTimes = @()

for ($i = 1; $i -le $N; $i++) {
    $dirTimes += (Measure-Command { Get-ChildItem C:\Windows -ErrorAction SilentlyContinue }).TotalMilliseconds
}

for ($i = 1; $i -le $N; $i++) {
    $psTimes += (Measure-Command { Get-Process }).TotalMilliseconds
}

$result = @()
$result += "DIR:"
$result += "Min: $($dirTimes | Measure-Object -Minimum | Select-Object -Expand Minimum) ms"
$result += "Max: $($dirTimes | Measure-Object -Maximum | Select-Object -Expand Maximum) ms"
$result += "Avg: $((($dirTimes | Measure-Object -Average).Average)) ms"
$result += ""
$result += "PS:"
$result += "Min: $($psTimes | Measure-Object -Minimum | Select-Object -Expand Minimum) ms"
$result += "Max: $($psTimes | Measure-Object -Maximum | Select-Object -Expand Maximum) ms"
$result += "Avg: $((($psTimes | Measure-Object -Average).Average)) ms"

$result | Out-File "Z:\ossst\lab3\min_max_avg.txt" -Encoding UTF8
