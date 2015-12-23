wget -qO- https://deb.nodesource.com/setup_4.x | sudo bash -
sudo apt-get install --yes nodejs
npm install -g cordova ionic
ionic serve -p $PORT nolivereload
# Now go to preview -> preview running application

# For Android:
sudo apt-get install --yes python-software-properties python g++ make ant openjdk-7-jre openjdk-7-jdk
sudo apt-get remove android-tools-adb android-tools-fastboot
wget http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz
