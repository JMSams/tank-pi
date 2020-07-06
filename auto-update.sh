cd /home/pi/

curl -s https://api.github.com/repos/JMSams/tank-pi/releases/latest \
| grep "browser_download_url.*tank-pi\.zip" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -q -O temp.zip -i -

unzip -o -q temp.zip -d ./tank-pi

rm temp.zip