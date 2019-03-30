#!/bin/bash -e
# Serve prod site locally.
# A Python server is used to behave more like a remote web server than using Jekyll.
# Assumes the site has been built already.

cd _site_prod
python3 -m http.server 8002
