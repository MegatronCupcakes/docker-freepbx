#!/bin/bash

test -f /etc/freepbx.conf && exit 0

pushd /usr/src
curl -sf -o freepbx.tgz -L http://mirror.freepbx.org/modules/packages/freepbx/freepbx-13.0-latest.tgz \
&& tar xfz freepbx.tgz \
&& rm freepbx.tgz \
&& cd /usr/src/freepbx \
&& echo "<pre>" > /var/www/index.html \
&& sleep 5 \
&& ./install -f -n \
&& fwconsole ma refreshsignatures \
&& rm -r /usr/src/freepbx \
&& fwconsole moduleadmin downloadinstall backup \
&& fwconsole moduleadmin downloadinstall ivr \
&& fwconsole moduleadmin downloadinstall donotdisturb \
&& echo "Forbidden ..." > /var/www/index.html

fwconsole restart --immediate 
popd