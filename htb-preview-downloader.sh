#!/bin/bash
#
#
#

clear

path=$1
originalpath=$(pwd)


function cleanproc()
{
        rm catalogue
        rm links
        rm urls
}

function download()
{
  wget -q https://academy.hackthebox.com/catalogue 
  sleep 2

cat catalogue | grep 'd-flex flex-column h-100 rounded-lg bg-gray hover-bg-gray mx-16' > links
sed -n 's/.*href="\([^"]*\)".*/\1/p' links > urls

for modules in $(cat urls)
do

        echo "[+] downloading module at: $modules"
        wget --adjust-extension $modules

done


}



if [ "$path" == "" ]
then
        echo "[+] downloading at: $(pwd)"
        sleep 2
        download
        cleanproc

else
        cd $path
        echo "[+] downloading at: $path"
        sleep 2
        download
        cleanproc

        cd $originalpath

fi
