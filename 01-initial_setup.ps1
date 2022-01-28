# Basic command line apps
winget install git --source winget
winget install gsudo --source winget

# Setup sshkey
ssh-keygen -t ed25519

# Setup git
git config --global user.name "Nick Chitwood"
git config --global user.email "nicholaschitwood@gmail.com"

# Clone dot repos
git clone git@github.com:nickchitwood/dotwin
git clone git@github.com:nickchitwood/dotfiles

# Softlink ssh config
sudo New-Item -Type SymbolicLink -Path .\ssh -Target ..\dotfiles\ssh

# WSL
sudo wsl --install