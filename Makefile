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
build: clean
	JEKYLL_ENV=production bundle exec jekyll build --trace
preview:
	cd _site && python3 -m http.server

# For Netlify.
build-remote:
	# Don't use Prod config here until moved to Netlify.
	bundle exec jekyll build --trace
