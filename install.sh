#!/bin/sh

#
# This script should be run via:
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/bgiot/up/bgiot/minimal/install.sh)"
#

mkdir -p ~/.up; cd ~/.up; \
curl -L https://github.com/bgiot/up/tarball/bgiot/minimal | tar -xzv --strip-components 1 &> /dev/null; \
sh bootstrap.sh
