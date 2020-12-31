#!/bin/bash

URL_FORM="https://docs.google.com/forms/d/e/1FAIpQLSdQhpq2Be2CktaPhuadUMU7ZDJoQuRlFlzNO45xO-drWQ0AXA/viewform?fbzx=7440236747203254000"
VOX_DEV_BASE_LINK="https://www.robots.ox.ac.uk/~vgg/data/voxceleb/vox1a/vox1_dev_wav_parta"
VOX_TEST_LINK="https://www.robots.ox.ac.uk/~vgg/data/voxceleb/vox1a/vox1_test_wav.zip"
VOX1_DATA_DIR="./data/vox1"
docker build docker -t fakebob

printf "\n\n====================\n\n"
printf "Please request access to the VoxCeleb dataset here: \n$URL_FORM \nPress Enter after you registered.\n"
read
echo "Enter your VoxCeleb login information."
read -p "Username: " username
read -p "Password: " password

mkdir -p $VOX1_DATA_DIR
cd $VOX1_DATA_DIR

download_vox_file() {
    link="$1"
    wget --user "$username" --password "$password" "$link"
}
for e in a b c d
do
    download_vox_file "$VOX_DEV_BASE_LINK""$e"
done
download_vox_file VOX_TEST_LINK
cat vox1_dev* > vox1_dev_wav.zip

