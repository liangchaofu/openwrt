#!/bin/sh -e
set -o pipefail

[ -d /etc/chinadns-ng ] || mkdir /etc/chinadns-ng
wget https://raw.githubusercontent.com/pexcn/daily/gh-pages/chnroute/chnroute.txt -O /tmp/chnroute.tmp
mv -f /tmp/chnroute.tmp /etc/chinadns-ng/chnroute.txt
wget https://raw.githubusercontent.com/pexcn/daily/gh-pages/chnroute/chnroute6.txt -O /tmp/chnroute6.tmp
mv -f /tmp/chnroute6.tmp /etc/chinadns-ng/chnroute6.txt
wget https://raw.githubusercontent.com/pexcn/daily/gh-pages/gfwlist/gfwlist.txt -O /tmp/gfwlist.tmp
mv -f /tmp/gfwlist.tmp /etc/chinadns-ng/gfwlist.txt
wget https://raw.githubusercontent.com/pexcn/daily/gh-pages/chinalist/chinalist.txt -O /tmp/chinalist.tmp
mv -f /tmp/chinalist.tmp /etc/chinadns-ng/chinalist.txt

/etc/init.d/chinadns-ng restart
