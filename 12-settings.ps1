# Setup windows terminal settings
New-Item -Type SymbolicLink -Path "$env:LOCALAPPDATA\Microsoft\Windows Terminal\settings.json" -Target .\settings.json