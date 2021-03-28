$IPAddress = Read-Host "What is the IP Address? "
$SubnetMask = Read-Hos "What is the subnet mask in CIDR formant? "
$Gateway = read-Host "What is the gateway? "
$Host_Name = Read-Host "What is the hostname? "
$DNSServers = read-HOst "What is the DNS Server address seperated by commas? "

New-NetIPAddress -IPAaddress "$IPAddress" - PrefixLength "$SubnetMask" -DefaultGateway "$Gateway" -InterfaceAlias Ethernet | Set-DnsClientServerAddress -ServerAddress "$DNSServers"
Rename-Computer -NewName "$Host_Name" -Restart
