#!/bin/bash
# Build site to prod directory.
# The prod config file values will override the main config values.

JEKYLL_ENV=production bundle exec jekyll build \
    --config _config.yml,_config_prod.yml \
    --destination _site_prod
