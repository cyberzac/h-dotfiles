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
boot2docker
coreutils
docker
docker-completion
duti
gettext
git
giter8
graphviz
grc 
heroku-toolbelt
jq
maven
netcat
nmap
node
protobuf
pyqt
python
python3
qt
sbt
scala
sleepwatcher
spark
subversion
tomcat
wget
EOF
# Install homebrew packages
brew install $packages
# Upgrade
brew upgrade $packages

exit 0
