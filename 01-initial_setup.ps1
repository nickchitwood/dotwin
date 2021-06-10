# Install scoop

try {
	$ScoopInstall = Get-Command wowidjioajdscoop
}
catch {
	$ScoopInstall = $null
}

if ($null -eq $ScoopInstall) {
	Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
}git 