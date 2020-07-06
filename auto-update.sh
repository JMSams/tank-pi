cd /home/pi/

ORG="JMSams"
REPO="tank-pi"
LOCATION=$(curl -s https://api.github.com/repos/$ORG/$REPO/releases/latest \
| grep "tag_name" \
| awk '{print "https://github.com/$ORG/$REPO/archive/" substr($2, 2, length($2)-3) ".zip"}')
curl -L -o temp.zip $LOCATION
unzip -o -q temp.zip

rm temp.zip