# The Buckfever Underground
> Static site content for a South African band that performs poetry with improvised music

_Author: [Michael Currin](https://github.com/MichaelCurrin) (web developer and band member)_.

The project uses [Jekyll](http://jekyllrb.com/) to build a static website for The Buckfever Underground. The band's homepage is [thebuckfeverunderground.co.za](http://thebuckfeverunderground.co.za/) - this is created from the `master` branch and updated via FTP. The site is also deployed on a staging environment hosted as a [Github Pages site](https://michaelcurrin.github.io/the-buckfever-underground/), using the `gh-pages` branch (since `develop` cannot be selected to build from).

The rights to the content of this remain with band or the original creators (including reviewers and photographers).

Inspiration for some layout of the site comes from [Sample Band Sites](https://bandzoogle.com/sample-band-sites).


## Installation

Follow my [gist](https://gist.github.com/MichaelCurrin/1085ab164550b31272699920b5549d4b) to setup and run this project.

## Production deploy

### Build

Build the static site to [_site_prod](/_site_prod) directory.

Uses configuration for the remote-hosted site (other than Github Pages).

```bash
$ bin/prod/build.sh
```

### Test

Optionally start a server in that directory to check everything built as expected.

```bash
$ bin/prod/serve.sh
```

The domain in the source will be for prod (which affects SEO, sitemap and RSS) but the structure and layout should still be fine to look at in the browser.

### Deploy

Then copy the output from the [_site_prod](/_site_prod) directory to where your site is hosted.


## Staging deploy

If deploying to Github Pages, config your repo's Settings with the Github Pages functionality. Then push to the master branch to deploy.


## Dev deploy

The shortcut scripts come from [Jekyll dev](https://github.com/MichaelCurrin/static-sites-generator-resources/tree/master/Jekyll/dev) directory in my resources repo.

### Serve

Build and the serve the site locally using the [_site](/_site) directory.

#### Root path

See [serve.sh](https://github.com/MichaelCurrin/static-sites-generator-resources/blob/master/Jekyll/dev/serve.sh).

Open in the browser: http://localhost:4000

#### Subpath

Or, run this script instead to simulate running on a subpath (as if on Page Project on Github Pages).

See [serve_subpath.sh](https://github.com/MichaelCurrin/static-sites-generator-resources/blob/master/Jekyll/dev/serve_subpath.sh).

Open in the browser: http://localhost:5000/the-buckfever-underground/

Note the trailing forwardslash. An alternate port number is used here so that both servers can be run at the same time for test purposes.


## Development

### Naming

Blog posts in the [_posts](/_posts) directory must have hyphens and not underscores, otherwise they will not build. Otherwise, underscores are usually used for filenames in this repo.

### Build times

With all the content to build with `jekyll`, the build times are typically over 50 seconds. That is annoying for making small changes and checking the output quickly. The incremental option can be used, but it is limited - for example a certain blog post's page will be updated but the change will not reflect on the listing of blog posts.

Therefore if you are working on a certain area such as blog posts, temporarily delete most of the items in the press, music and/or shows directory. Then your build time will only be about 2 seconds. Be careful with deleting everything though - if `link` calls in the active section become invalid, the build will fail.

When you are done, do a `git checkout <DIR>` on that directory to restore the delete files.

## Internal links

Internal links are created using an anchor tag where the `href` value uses a `link` function and the path to the versioned filed. This is useful as it will be replace with the path to the generated file and also will throw an error if the link is broken.

However, running the website of a subpath is not supported by the function and therefore the base URL must be inserted before it.

e.g.

```
{{ site.baseurl }}{% link _pages/shows.md %}
# Results in:
/the-buckfever-underground/shows/
```

Unfortunately when referencing an index page, this creates a `/index.html` path rather than just `/` which is a duplicate page reference. But this is fine, as an error will be thrown without `index.md` part and also since the link function does not support replacement of the result value in a chain.

```
{{ site.baseurl }}{% link _music/last_days_of_beautiful/index.md %}

# Results in:
/the-buckfever-underground/music/last_days_of_beautiful/index.html
```

When this is needed to be assigned to a variable or used in an `includes` statement, then use `capture` as shown below. This is necessary since the `link` filter cannot be set to a variable using `assign`. The `capture` approach also means the `append` filter is not needed so the syntax looks cleaner.

```
{% capture album_link %}
   {{ site.baseurl }}{% link _music/last_days_of_beautiful/index.md %}
{% endcapture %}
{{ album_link }}

# Results in:
/the-buckfever-underground/music/last_days_of_beautiful/index.html
```


## Images

For inserting images with captions, see the [image figure](/_includes/image.html) function, which is an image inside a figure. This is used for example on the [about](/_pages/about.md) page.

If you don't need a frame or caption, use the [image simple](/_includes/image_simple.html) function.

## Emails

Surround an e-mail address in angled brackets to make it a link.

```
<user@example.com>
# Results in:
mailto:user@example.com
```
