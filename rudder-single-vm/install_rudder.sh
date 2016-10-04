#!/bin/qash

# Install the Rudder release repository key
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 474A19E8

# Add the Rudder repository for version 3.1
cat > /etc/apt/sources.list.d/rudder.list << EOF
deb http://www.rudder-project.org/apt-3.1 $(lsb_release -cs) main
EOF

# Update the apt cache
apt-get -y update

# Install Rudder
apt-get -y install rudder-server-root

# All done
exit 0
