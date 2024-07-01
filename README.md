# PowerShell Scripts for Automated Network Monitoring and Reporting

This repository contains PowerShell scripts for automated network monitoring and reporting tasks. These scripts can be used to perform ping sweeps, port scanning, and bandwidth monitoring on a Windows environment.

## Scripts Overview

### 1. Ping Sweep

**Description**: This script pings a range of IP addresses to check for active hosts on a network.

**Usage**:
- Modify the IP address range (`$startIp` and `$endIp`) in the script as needed.
- Run the script in PowerShell by executing `.\PingSweep.ps1`.

### 2. Port Scanner

**Description**: This script scans specified IP addresses for open ports.

**Usage**:
- Set the target IP address (`$targetIp`) and ports (`$ports`) to scan in the script.
- Run the script in PowerShell by executing `.\PortScanner.ps1`.

### 3. Bandwidth Monitoring

**Description**: This script monitors network bandwidth usage using Performance Counters.

**Usage**:
- Run the script in PowerShell to measure bandwidth usage across network interfaces.
- Execute `.\BandwidthMonitor.ps1` to view bandwidth usage statistics.

## Requirements

- PowerShell version 3.0 or later.
- Permissions to execute PowerShell scripts (`Set-ExecutionPolicy` might need adjustment).

## Notes

- **Testing**: Before deploying in a production environment, thoroughly test scripts in a controlled setting.
- **Security**: Ensure scripts are executed securely with appropriate permissions.
- **Customization**: Scripts can be customized by adjusting IP ranges, ports, and performance counter metrics based on specific network requirements.

Screenshots:
![bandwidth](https://github.com/josephmtakai/automated-network-monitoring-and-reporting/assets/108322731/8c58e58c-5850-452f-a166-82c30fa1c923)
![portscan](https://github.com/josephmtakai/automated-network-monitoring-and-reporting/assets/108322731/1ca9aef8-b853-4d4e-a4de-0ec843070187)


## License

This project is licensed under the [MIT License](LICENSE).

## Author

- [Joseph N. Mtakai](https://github.com/josephmtakai)

Feel free to fork, modify, and use these scripts according to your needs. Contributions and feedback are welcome!
