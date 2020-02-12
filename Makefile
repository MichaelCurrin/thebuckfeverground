install:
	bundle install --path vendor/bundle

s serve:
	bundle exec jekyll serve

i incr:
	bundle exec jekyll serve --incremental
