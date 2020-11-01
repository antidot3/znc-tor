#!/bin/sh

chown -R znc:znc /znc-data/
/usr/bin/tor -f /etc/tor/torrc &
exec sudo -u znc proxychains znc --foreground --datadir="/znc-data/" $@
