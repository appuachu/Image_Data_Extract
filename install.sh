#! /bin/bash 
for_loop()
{
for rec in binwalk exiftool steghide;do
echo "*********************************"
sudo apt-get install $rec
echo "================================="
done
}
for_loop
