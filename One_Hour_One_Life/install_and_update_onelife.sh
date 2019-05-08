####################################################################################
# Required packages:                                                               #
#                                                                                  #
# Arch: git g++ magemagick xclip sdl                                               #
#                                                                                  #
# Ubuntu: git g++ imagemagick xclip libsdl1.2-dev libglu1-mesa-dev libgl1-mesa-dev #
#                                                                                  #
####################################################################################
echo
echo Updating minorGems...
echo
git clone https://github.com/jasonrohrer/minorGems.git
cd ./minorGems
git pull
cd  ..
echo
echo Updating OneLife
echo
git clone https://github.com/jasonrohrer/OneLife.git
cd ./OneLife
git pull
cd ..
echo
echo Updating OneLifeData7
echo
git clone https://github.com/jasonrohrer/OneLifeData7.git
cd ./OneLifeData7
git pull
cd ..
echo
echo Starting building the game...
echo
cd ./OneLife
chmod u+x ./configure
./configure 1
cd ./build/source
./makeLinuxBuildFromSourceBundle SPP
cd ../..
echo
echo Starting building the server...
echo
cd ./server
chmod u+x ./configure
./configure 1
make
