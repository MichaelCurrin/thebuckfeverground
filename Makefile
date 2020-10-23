default: install

h help:
	@egrep '^\S|^$$' Makefile

install:
	bundle config set --local path vendor/bundle
	bundle install

clean:
	rm -rf cache

s serve: clean
	bundle exec jekyll serve --trace

i serve-incr: clean
	bundle exec jekyll serve --trace --incremental

# For FTP.
b build-prod-local: clean
	JEKYLL_ENV=production bundle exec jekyll build --trace --config _config.yml,_config_prod.yml
preview:
	cd _site && python3 -m http.server

# For Netlify.
build-prod-remote:
	# Don't use prod config here until moved to Netlify.
	jekyll build
