# Define IP addresses and ports to scan (adjust as needed)
$targetIp = "192.168.1.100"
$ports = 80, 443, 3389  # Example ports to scan

# Loop through each port and check for open connections
foreach ($port in $ports)
{
    $tcpClient = New-Object System.Net.Sockets.TcpClient
    $portResult = $tcpClient.BeginConnect($targetIp, $port, $null, $null)
    $portOpen = $portResult.AsyncWaitHandle.WaitOne(100)

    if ($portOpen -and !$tcpClient.Connected)
    {
        Write-Output "Port $port is open on $targetIp."
    }
    else
    {
        Write-Output "Port $port is closed on $targetIp."
    }

    $tcpClient.Close()
}
