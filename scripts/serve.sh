#!/bin/sh
#
# This script starts a local webserver on localhost:4000 that serves the
# example site.
#

set -e

bundle exec jekyll serve
