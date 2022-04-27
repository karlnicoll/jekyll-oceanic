#!/usr/bin/env sh
#
# This script will install any dependencies required by the template.
#
# It will also perform a basic sanity check to ensure that the Bundler
# gem has been installed and is available in $PATH.
#

set -e

if ! which bundle 1>&2 2>/dev/null; then
	echo "Bundle not found. Try installing with \`gem install bundle\`."
	exit 1
fi

bundle config set path .bundle
bundle install
