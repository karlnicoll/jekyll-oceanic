#!/usr/bin/env sh
#
# This script builds the example site for deployment.
#

set -e

echo "Building the example site..."
bundle exec jekyll build
