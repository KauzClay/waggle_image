#!/bin/bash
set -x
set -e

rm -f /usr/bin/wvwaggle.sh
cp wvwaggle.sh /usr/bin/wvwaggle.sh
chmod + /usr/bin/wvwaggle.sh

rm -f /etc/udev/rules.d/75-wwan-net.rules
cp 75-wwan-net.rules /etc/udev/rules.d/

rm -f /etc/wvdial.conf
cp ./wvdial.conf /etc/

set +x
echo "run: udevadm control --reload-rules"
