#!/bin/bash
sed -i "s/DOMAIN/$1/" /etc/ddclient/ddclient.conf
sed -i "s/PASSWORD/$2/" /etc/ddclient/ddclient.conf
sed -i "s/HOST/$3/" /etc/ddclient/ddclient.conf

/usr/sbin/ddclient -foreground -debug -verbose -noquiet