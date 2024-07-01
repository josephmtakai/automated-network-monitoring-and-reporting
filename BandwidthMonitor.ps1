# Measure bandwidth usage using Performance Counters
$counterName = '\Network Interface(*)\Bytes Total/sec'
$networkInterfaces = Get-Counter -Counter $counterName

foreach ($interface in $networkInterfaces.CounterSamples)
{
    $interfaceName = $interface.InstanceName
    $bytesTotalPerSec = $interface.CookedValue

    Write-Output "Interface: $interfaceName"
    Write-Output "Bandwidth Usage: $($bytesTotalPerSec / 1MB) MB/sec"
    Write-Output "----------------------------------------"
}
