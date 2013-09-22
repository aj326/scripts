#! /bin/bash
myPath=$(pwd)
echo $myPath
cd ~/AUR/tars/
mkdir -p temp
cd temp
rm -r extracted/
wget -O auto.tar.gz $1 
tar xzf auto.tar.gz 
rm auto.tar.gz 
ls
mv * extracted/
cd extracted
makepkg -s
sudo pacman -U *.tar.xz
cd ..
cd $myPath
echo "done"

