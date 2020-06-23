#!/bin/sh
#
# This script does a CI build of the template.
#
# First, it will attempt to build the site. If successful, it will then
# attempt to build the template as a Rubygem.
#

set -e

echo "Attempting to build the example site..."
scripts/build-example-site.sh

if [ -e "./_site/index.html" ]; then
  echo "Success."
  rm -Rf _site
else
  echo "Unable to find '_site/index.html' after building."
  exit 1
fi

gem build jekyll-oceanic.gemspec
