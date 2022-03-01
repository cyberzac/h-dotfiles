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

read -d '' packages <<EOF 
ansible
awscli
blueutil
coreutils
dialog
dive
dnsmasq
fswatch
git
git-flow
git-lfs
glances
graphviz
httpie
hub
ipfs
jq
john
maven
mosquitto
netcat
nmap
node
pandoc
magic-wormhole
scala
sleepwatcher
socat
scalacenter/bloop/bloop
tree
watch
wget
websocat
EOF
# Install homebrew packages
brew install $packages
# Upgrade
brew upgrade $packages

exit 0
#bdw-gc
#fn
#gh
#lightbend/tools/reactive-cli
#influxdb
#kapacitor
#kubernetes-cli
#kubernetes-helm
#leveldb
#protobuf
#pyqt5
#python
#python3
#pv
#pwgen
#qt
#s3cmd
#sbt
#giter8
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
#terraform


