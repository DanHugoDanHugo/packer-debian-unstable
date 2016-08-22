#! /bin/bash

wget -c https://d-i.debian.org/daily-images/amd64/daily/MD5SUMS
checksum=`grep netboot\/mini.iso MD5SUMS | cut -d' ' -f1`
echo -n "Current published md5 checksum is "
echo $checksum
sed -i.bak -E "s/^(\ *)\"iso_checksum\"\:\ \".*\",$/\1\"iso_checksum\"\:\ \"$checksum\",/g" ./template.json

