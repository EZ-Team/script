# SHELLL SCRIPT
# MAINTENER MAXIME PELTE

# Donwload api rest project from github
# echo "Downloading api sources..."
# git clone https://github.com/EZ-Team/EZStudioApi.git

# Dowload webb app source from github
#echo "Downloading webb app sources..."
#git clone https://github.com/EZ-Team/EZStudioWebApp.git

# Install tools for web app

#cd ./EZStudioWebApp/

#echo "Downloading dependencies..."
#npm install @angular/cli
#npm install 

#cd ../

# Build the server jar 
echo "Building API jar..."
cd ./EZStudioApi/
./gradlew build 

echo "Build done!"

cd ../

# Build Angular web app
echo "Building Angular app..."
cd ./EZStudioWebApp/
ng build

echo "Build done!"

cd ../

# Run api and web app through docker-compose
echo "Run api & web app with docker-compose"

docker-compose build
docker-compose up