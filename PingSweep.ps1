# Define IP address range to ping (adjust as needed)
$startIp = "192.168.1.1"
$endIp = "192.168.1.254"

# Loop through each IP address in the range and ping
for ($i = [ipaddress]::Parse($startIp); $i -le [ipaddress]::Parse($endIp); $i = $i.Pipeline())
{
    $ip = $i.IPAddressToString
    $pingResult = Test-Connection -ComputerName $ip -Count 1 -Quiet

    if ($pingResult)
    {
        Write-Output "$ip is reachable."
        # Optionally, log the active IP addresses to a file or database
    }
    else
    {
        Write-Output "$ip is not reachable."
    }
}
