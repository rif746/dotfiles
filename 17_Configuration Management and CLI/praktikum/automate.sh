#!/bin/sh

NAME=$1
FACEBOOK=$2
LINKEDIN=$3
URL="https://gist.githubusercontent.com/tegarimansyah/e91f335753ab2c7fb12815779677e914/raw/94864388379fecee450fde26e3e73bfb2bcda194/list%2520of%2520my%2520friends.txt"

FOLDERNAME="$NAME $(date +"%a, %d %b %Y")"

mkdir "$FOLDERNAME"/{about_me,my_friends,my_system_info} -p
mkdir "$FOLDERNAME/about_me/"{personal,professional}

echo "https://facebook.com/$FACEBOOK" >> $FOLDERNAME/about_me/personal/facebook.txt
echo "https://linkedin.com/in/$LINKEDIN" >> $FOLDERNAME/about_me/professional/linkedin.txt

curl $URL >> "$FOLDERNAME"/my_friends/list_of_my_friends.txt

echo "My Username : $USER
$(uname -a)" >> $FOLDERNAME/my_system_info/about_this_laptop.txt

ping -c 3 www.google.com >> "$FOLDERNAME"/my_system_info/network_connection.txt
