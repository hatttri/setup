# Setup
Set-PSResourceRepository -Name "PSGallery" -PassThru -Trusted

# Install
Install-PSResource -Name "Az" -Repository "PSGallery"
