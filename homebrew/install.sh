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
blueutil
coreutils
docker
docker-compose
docker-machine
docker-swarm
duti
gettext
git
git-flow
giter8
graphviz
grc 
heroku-toolbelt
httpie
jq
john
leveldb
maven
netcat
nmap
node
protobuf
pyqt5
python
python3
pwgen
qt
s3cmd
sbt
scala
sleepwatcher
socat
spark
subversion
tree
wget
EOF
# Install homebrew packages
brew install $packages
# Upgrade
brew upgrade $packages

exit 0
