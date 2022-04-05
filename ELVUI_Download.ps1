#Fake Credential
#Credential = Get-Credential

#Define VERSION if needed.
$VERSION = 12.73

# Source file URL
#'https://www.tukui.org/downloads/elvui-' + $VERSION + '.zip'

#Rip main branch from Github
$source = 'https://github.com/tukui-org/ElvUI/archive/refs/heads/main.zip'

#Download location (assume standard path)
$destination = '~\Downloads\ELVUI.zip'

#Download Zip
Invoke-WebRequest -Uri $source -OutFile $destination -Credential $credential

#Unzip
Expand-Archive ~\Downloads\ELVUI.zip -DestinationPath ~\Downloads\ELVUI

#Remove old folders
Remove-Item "C:\Program Files (x86)\World of Warcraft\_retail_\Interface\AddOns\ElvUI*" -Recurse

#Move in new folders
Move-Item -Path ~\Downloads\ELVUI\ElvUI-main\* -Destination "C:\Program Files (x86)\World of Warcraft\_retail_\Interface\AddOns"

#Cleanup
Remove-Item "~\Downloads\ELVUI*" -Recurse