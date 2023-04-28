echo "Enter Domain Name: "
read domain
echo "Finding subdomain using subfinder of $domain"
subfinder -d $domain -o subfinder.txt
echo "Finding subdomain using amass of $domain"
amass enum -d $domain -o amass.txt

echo "Merging subdomains of subfinder and amass"
echo "Removing Duplicate subdomains"
cat subfinder.txt amass.txt | sort -u > subdomains.txt
