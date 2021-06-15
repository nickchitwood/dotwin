# Install scoop

try {
	$ScoopInstall = Get-Command scoop
}
catch {
	$ScoopInstall = $null
}

if ($null -eq $ScoopInstall) {
	Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
}

# Add initial extra buckets
scoop bucket add extras 
scoop bucket add nerd-fonts

# Symlink ssh from linux dotfiles
New-Item -Type SymbolicLink -Path .\ssh -Target ..\dotfiles\ssh

# Add windows-terminal
