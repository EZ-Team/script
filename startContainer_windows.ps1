# POWERSHELL SCRIPT
# MAINTENER MAXIME PELTE

# Donwload api rest project from github
#Write-Output "Downloading api sources..."
#git clone https://github.com/EZ-Team/EZStudioApi.git

# Dowload webb app source from github
#Write-Output "Downloading webb app sources..."
#git clone https://github.com/EZ-Team/EZStudioWebApp.git

# Install tools for web app

#Set-Location .\EZStudioWebApp\

#Write-Output "Downloading dependencies..."
#npm install @angular/cli
#npm install 

#Set-Location ../

# Build the server jar 
Write-Output "Building API jar..."
Set-Location .\EZStudioApi\
./gradlew build 

Write-Output "Build done!"

Set-Location ../

# Build Angular web app
Write-Output "Building Angular app..."
Set-Location .\EZStudioWebApp\
ng build

Write-Output "Build done!"

Set-Location ../

# Run api and web app through docker-compose
Write-Output "Run api & web app with docker-compose"

docker-compose build
docker-compose up

