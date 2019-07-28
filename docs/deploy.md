# Deploy instructions

## Dev env

The shortcut scripts come from [Jekyll dev](https://github.com/MichaelCurrin/static-sites-generator-resources/tree/master/Jekyll/dev) directory in my resources repo.

### Serve

Build and the serve the site locally using the [_site](/_site) output directory.

#### On root path

See [serve.sh](https://github.com/MichaelCurrin/static-sites-generator-resources/blob/master/Jekyll/dev/serve.sh).

Open in the browser: http://localhost:4000

#### On subpath

Or, run this script instead to simulate running on a subpath (as if on Page Project on Github Pages).

See [serve_subpath.sh](https://github.com/MichaelCurrin/static-sites-generator-resources/blob/master/Jekyll/dev/serve_subpath.sh).

Open in the browser: http://localhost:5000/the-buckfever-underground/

Note the trailing forwardslash. An alternate port number is used here so that both servers can be run at the same time for test purposes.


## Staging env

If deploying to Github Pages, config your repo's Settings with the Github Pages functionality. Then push to the master branch to deploy.

## Prod env

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
