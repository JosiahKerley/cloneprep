#!/usr/bin/env bash
source /opt/cloneprep/functions/common.sh
run 'logrotate –f /etc/logrotate.conf'
run 'rm –f /var/log/*-???????? /var/log/*.gz'
run 'rm -f /var/log/dmesg.old'
run 'rm -rf /var/log/anaconda'
run 'cat /dev/null > /var/log/audit/audit.log'
run 'cat /dev/null > /var/log/wtmp'
run 'cat /dev/null > /var/log/lastlog'
run 'cat /dev/null > /var/log/grubby'
