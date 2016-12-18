#!/bin/bash
### The script is taken from ###
### "http://unix.stackexchange.com/questions/91701/ufw-allow-traffic-only-from-a-domain-with-dynamic-ip-address" ###
#allow a dyndns name
HOSTNAME=destar-h.ddns.net
LOGFILE=/root/ip_log

Current_IP=$(host $HOSTNAME | cut -f4 -d' ')

if [ $LOGFILE = "" ] ; then
  iptables -I INPUT -i eth0 -s $Current_IP -j ACCEPT
  echo $Current_IP > $LOGFILE
else

  Old_IP=$(cat $LOGFILE)

  if [ "$Current_IP" = "$Old_IP" ] ; then
    echo IP address has not changed
  else
    iptables -D INPUT -i eth0 -s $Old_IP -j ACCEPT
    iptables -I INPUT -i eth0 -s $Current_IP -j ACCEPT
    /etc/init.d/iptables save
    echo $Current_IP > $LOGFILE
    echo iptables have been updated
  fi
fi
