
url1="https://adaway.org/hosts.txt"

url2="https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&showintro=0&mimetype=plaintext"

url3="https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts"

echo "Fetching $url1"
curl $url1 >> hosts
echo "Fetching $url2"
curl $url2 >> hosts
echo "zbi manga2" >> hosts
echo "Fetching $url3"
curl $url3 >> hosts



