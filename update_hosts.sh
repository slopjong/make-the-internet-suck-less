#!/bin/bash

# This script should be run as a (daily) cron job:
#
#   0 0 * * * cd /path/to/this/script; ./update_hosts.sh

wget --quiet -O hosts http://someonewhocares.org/hosts/hosts
wget --quiet -O hosts.zero http://someonewhocares.org/hosts/zero/hosts

# Jason Plank gave here http://stackoverflow.com/a/7167115
# an example of matching multiple lines. Thank you so much!

curl -s http://someonewhocares.org/hosts/mac/ | \
grep -Pzo "(?s)^(\s*)\N*<PRE>.*</PRE>" | \
sed -e 's/<.*PRE>//g' | \
sed -e 's/<\/PRE>//g' | \
sed -e 's/^</;</g' > hosts.mac

curl -s http://someonewhocares.org/hosts/zero/mac/ | \
grep -Pzo "(?s)^(\s*)\N*<PRE>.*</PRE>" | \
sed -e 's/<.*PRE>//g' | \
sed -e 's/<\/PRE>//g' | \
sed -e 's/^</;</g' > hosts.zero.mac

git add hosts*
git commit hosts* -m "Hosts added" && git push