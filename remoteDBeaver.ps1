$ming = "C:\Program Files (x86)\Xming\Xming.exe"
Write-Host "Make Sure XMing is installed and running in Host machine"

$remoteboxIP = read-host "Remote box IP (Odoo-dev: 192.162.1.3)";
$username = read-host "Username";
$password = read-host "Password";

& $ming :0 -clipboard -multiwindow

./plink.exe -ssh -X $username@$remoteboxIP -P 22 -pw $password dbeaver
