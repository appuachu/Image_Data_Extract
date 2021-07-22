#! /bin/bash

echo "


       - - - -           -- - - - - - -         -            -       -              -
     -         -         -                      -            -       -              -
     -         -         -                      -            -       -              -
     -         -         -                      -            -       -              -
     -=========-         -                      -============-       -              -
     -         -         -                      -            -       -              -
     -         -         -                      -            -       -              -
     -         -         -                      -            -       -              -
     -         -         - - - - - - - -        -            -       - - - - - - - -



 "****************************************************"
 "Copyright of ACHU, 2021                             "
 "https://github.com/appuachu                                                    "
 "                                                    "
 "                                                    "
 "                                                    "
 "****************************************************" 

"

menu()
{
echo "1:Extract with EXIFTOOL"
echo "2:Extract with BINWALK"
echo "3:Extract with STEGHIDE"
echo "4:Extract with HEAD"
echo "5:Extract with TAIL"
echo "6:CHECK ALL"
read -p "Select an option:" opt
}

case_stat()
{
case $opt in
1)
EXIFTOOL=$(exiftool $dom)
echo "*********************"
echo "$EXIFTOOL" ;;
2)
BINWALK=$(binwalk  $dom)
echo "$BINWALK " ;;
3)
STEGHIDE=$(steghide extract -sf $dom)
echo "$STEGHIDE " ;;
4)
HEAD=$(head $dom)
echo "$HEAD" ;;
5)
TAIL=$(tail $dom)
echo "$TAIL" ;;
6)
for_loop ;;
esac
}

for_loop()
{
for rec in 'exiftool' 'binwalk' 'steghide extract -sf'  head tail ; do
echo "****************************************** "
$rec $dom
echo "=========================================="
echo "                                          "
done
}

#main script
read -p "Enter the image path:" dom
menu
case_stat

