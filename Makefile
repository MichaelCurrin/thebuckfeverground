# Show summary of make commands.
help:
	@egrep '(^\S)|(^$$)' Makefile


install:
	bundle install --path vendor/bundle


s serve:
	bundle exec jekyll serve

i incr:
	bundle exec jekyll serve --incremental --livereload

# Build for a remote env.
build-prod-local:
	JEKYLL_ENV=production bundle exec jekyll build --config _config.yml,_config_prod.yml

# Preview - serve the built site locally.
build-prod-serve:
	cd _site && python3 -m http.server 8002


remote-build-prod:
	# Don't use prod config until moved to Netlify.
	jekyll build
