#!/usr/bin/env bash
source /opt/cloneprep/functions/common.sh
for f in `/etc/sysconfig/network-scripts/ifcfg-* | grep -E 'ifcfg-[a-k]'`
do
  run sed -i '/^(HWADDR|UUID)=/d' ${f}
  run sed -i 's/^IPADDR=.*/IPADDR=/g' ${f}
  run sed -i 's/^GATEWAY=.*/GATEWAY=/g' ${f}
  run sed -i 's/^PREFIX=.*/PREFIX=/g' ${f}
  run sed -i 's/^NETMASK=.*/NETMASK=/g' ${f}
done
