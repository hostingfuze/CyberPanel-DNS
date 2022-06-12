# CyberPanel-DNS
Allows users to change DNS settings in cloudflare

All domains must belong to a single Cloudlare account. Unable to monitor different Cloudflare accounts. Peter leaves the original files on the server.

#How to install CyberPanel-DNS

`
curl -l https://raw.githubusercontent.com/hostingfuze/CyberPanel-DNS/master/cyberpanel-dns.sh -o cyberpanel-dns.sh

chmod 700 cyberpanel-dns.sh

bash cyberpanel-dns.sh
`

#How to configure CyberPanel-DNS
The script creates a file in "/home/cyberpanel" that needs to be modified with:

- cloudflare email address
- global api key

After the "/home/cyberpanel/CloudFlare" file is modified, we copy /home/cyberpanel/CloudFlare for each user we want to allow access to the DNS in cloudflare.

for example we have user x76gtr9

we will create the right:

`cp /home/cyberpanel/CloudFlare /home/cyberpanel/CloudFlarex76gtr9`

followed by restarting cyberpanel

The script creates a backup with the original files. View `/backup`


