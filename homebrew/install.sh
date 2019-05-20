#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  x You should probably install Homebrew first:"
  echo "    https://github.com/mxcl/homebrew/wiki/installation"
  exit
fi

#docker
#docker-compose
#docker-machine
#docker-swarm
#duti
#gettext
#gitup
#grc 
#heroku-toolbelt
#spark
#subversion


read -d '' packages <<EOF 
ansible
awscli
blueutil
bdw-gc
coreutils
dnsmasq
fn
git
git-flow
giter8
graphviz
httpie
hub
lightbend/tools/reactive-cli
ipfs
jq
john
kubernetes-cli
kubernetes-helm
leveldb
maven
mosquitto
netcat
nmap
node
protobuf
pyqt5
python
python3
pv
pwgen
magic-wormhole
qt
s3cmd
sbt
scala
sleepwatcher
socat
tree
wget
EOF
# Install homebrew packages
brew install $packages
# Upgrade
brew upgrade $packages

exit 0
