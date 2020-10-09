default: install

help:
	@egrep '^\S|^$$' Makefile

install:
	bundle config set --local path vendor/bundle
	bundle install

s serve:
	bundle exec jekyll serve --trace

i serve-i:
	bundle exec jekyll serve --trace --incremental

# For FTP deploy
build-prod-local:
	JEKYLL_ENV=production bundle exec jekyll build --trace --config _config.yml,_config_prod.yml

# Preview deploy
serve-prod:
	cd _site && python3 -m http.server

# Build command for Netlify.
build-prod-remote:
	# Don't use prod config here until moved to Netlify.
	jekyll build
