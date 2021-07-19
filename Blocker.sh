
echo "Detecting System type"
sys=$(uname)
while [ "$sys" == "Linux" ]
do
echo "Your System is Linux"
hosts="/etc/hosts"
break
done

while [ "$sys" == "Darwin" ]
do
echo "Your System is Mac OS"
hosts="/private/etc/hosts"
break
done

while [ $hosts != "" ]
do
echo " Starting Service"
echo "hosts file location is '$hosts'"
echo "Date: $(date)" > $hosts
url1="https://adaway.org/hosts.txt"
url2="https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext"
url3="https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts"
echo "Fetching $url1"
sudo curl $url1 >> "$hosts"
echo "Fetching $url2"
sudo curl $url2 >> "$hosts"
echo "Fetching $url3"
sudo curl $url3 >> "$hosts"
break
done
