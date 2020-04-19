# Show summary of make commands.
help:
	@egrep '(^\S)|(^$$)' Makefile


install:
	bundle install --path vendor/bundle


s serve:
	bundle exec jekyll serve

i incr:
	bundle exec jekyll serve --incremental --livereload


build-prod-local:
	JEKYLL_ENV=production bundle exec jekyll build --config _config.yml,_config_prod.yml

serve-prod:
	cd _site && python3 -m http.server


build-prod-remote:
	# Don't use prod config until moved to Netlify.
	jekyll build
