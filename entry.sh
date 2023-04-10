#!/bin/sh
cd /opt
ln -sf /config/* /opt
exec java -jar PowerTunnel.jar -console --start
