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
cd ../..
echo
echo Copy required game files into the server folder...
echo
rm -r ./OneLife/server/categories
rm -r ./OneLife/server/objects
rm -r ./OneLife/server/transitions
rm -r ./OneLife/server/tutorialMaps
cp -r -f ./OneLife/build/source/OneLife_SPP/categories ./OneLife/server
cp -r -f ./OneLife/build/source/OneLife_SPP/objects ./OneLife/server
cp -r -f ./OneLife/build/source/OneLife_SPP/transitions ./OneLife/server
cp -r -f ./OneLifeData7/tutorialMaps ./OneLife/server
echo
echo The game can be found here:
echo ~/OneLife/build/source/OneLife_SPP
echo
echo Server is here:
echo ~/OneLife/server
echo
