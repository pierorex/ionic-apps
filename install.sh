wget -qO- https://deb.nodesource.com/setup_4.x | sudo bash -
sudo apt-get install --yes nodejs
npm install -g cordova ionic
ionic serve -p $PORT nolivereload
# Now go to preview -> preview running application

# For Android:
sudo apt-get install --yes python-software-properties python g++ make ant openjdk-7-jre openjdk-7-jdk lib32z1
sudo apt-get remove android-tools-adb android-tools-fastboot
wget http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz

nano /home/ubuntu/.bashrc
# modify path to include sdk tools, add this to the start of .bashrc
PATH=${PATH}:/home/ubuntu/android-sdk-linux/tools
# make sure executing android and ant can be done without problems
android
ant

# show all sdk manager downloadables
android list sdk --all
# install required packages
android update sdk -u -a -t 1,3,4,27,31

# activate android as a valid ionic platform inside the app's directory
ionic platform add android

# change 
# /app_folder/platforms/android/project.properties 
# /app_folder/platforms/android/AndroidManifest 
# /app_folder/platforms/android/CordovaLib/project.properties
# to reflect the proper android version that you want to target the build.

ionic build android
