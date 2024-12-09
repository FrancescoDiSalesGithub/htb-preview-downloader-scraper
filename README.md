# htb-preview-downloader-scraper
Downloads and scrape all the preview modules of htb academy

# How to use it

if you don't pass as argument the path where you want to download the files the script will run at the current directory:
```
bash htb-preview-downloader.sh
```

Otherwise:
```
bash htb-preview-downloader.sh /home/johndoe/htb
```

# How to read downloaded files

Since modern browser can not display the content of the preview lessons you have to use lynx:
```
lynx introduction-to-htb.html
```

And search for module overview
