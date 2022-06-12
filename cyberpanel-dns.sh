#!/bin/bash
# ++++++++++++++++++++++++++++++++++++++
# + DDoS Filter by HostingFuze Network +
# +....Copyright @ 2022 ... tactu .... +
# ++++++++++++++++++++++++++++++++++++++
mkdir -p /backup
cd /backup
tar -czvf backup-dns.tar.gz /usr/local/CyberCP/dns/templates/dns/*
rm -rf /usr/local/CyberCP/dns/templates/*
cd /usr/local/CyberCP/dns/templates/
curl -l https://raw.githubusercontent.com/hostingfuze/CyberPanel-DNS/main/dns.tar.gz -o /usr/local/CyberCP/dns/templates/dns.tar.gz
tar -xf dns.tar.gz
rm -f /usr/local/CyberCP/dns/templates/dns.tar.gz
curl -l https://raw.githubusercontent.com/hostingfuze/CyberPanel-DNS/main/CloudFlare -o /home/cyberpanel/CloudFlare
echo edit /home/cyberpanel/CloudFlare
echo create permissions for each user
echo example for user admin:
echo cp /home/cyberpanel/CloudFlare /home/cyberpanel/CloudFlareadmin 
echo example for user 76fr4gk:
echo cp /home/cyberpanel/CloudFlare /home/cyberpanel/CloudFlare76fr4gk 
echo followed by restart :
echo systemctl restart lscpd