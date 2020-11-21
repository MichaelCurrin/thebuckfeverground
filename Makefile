default: install


h help:
	@egrep '^\S|^$$' Makefile


install:
	bundle config set --local path vendor/bundle
	bundle install

.PHONY: hooks
hooks:
	# Don't use -r flag as it is not widely compatible.
	cd .git/hooks && ln -s -f ../../hooks/pre-push pre-push
	ls -l ./.git/hooks/pre-push


# Remove resized images. Optional. Resizing is faster if images already exist.
clean:
	rm -rf cache


s serve:
	bundle exec jekyll serve --trace --livereload

i serve-incr:
	bundle exec jekyll serve --trace  --livereload --incremental


# For FTP.
b build-prod-local: clean
	JEKYLL_ENV=production bundle exec jekyll build --trace \
		--config _config.yml,_config_prod.yml

preview:
	cd _site && python3 -m http.server

# For Netlify.
build-prod-remote:
	# Don't use prod config here until moved to Netlify.
	bundle exec jekyll build --trace
