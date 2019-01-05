# The Buckfever Underground
> Static site content for a South African band that performs poetry with improvised music

_Author: [Michael Currin](https://github.com/MichaelCurrin) (web developer and band member)_.

The project uses [Jekyll](http://jekyllrb.com/) to build a static website for The Buckfever Underground. The band's homepage is [thebuckfeverunderground.co.za](http://thebuckfeverunderground.co.za/). For a staging environment, this is deployed as a [Github Pages site](https://michaelcurrin.github.io/the-buckfever-underground/) upon merges to the `develop` branch.

The rights to the content of this remain with band or the original creators (such as reviewers or photographers).

Inspiration for some layout of the site comes from [Sample Band Sites](https://bandzoogle.com/sample-band-sites).


## Installation

Follow this [Jekyll setup and run gist](https://gist.github.com/MichaelCurrin/1085ab164550b31272699920b5549d4b) to get the repo and dependencies setup.

```bash
$ script/install.sh
```


## Production deploy

### Build

Build the static site to [_site_prod](_site_prod) directory.

Uses configuration for the remote-hosted site (other than Github Pages).

```bash
$ script/prod/build.sh
```

### Test

Optionally start a server in that directory to check everything built as expected.

```bash
$ script/prod/serve.sh
```

The domain in the source will be for prod (which affects SEO, sitemap and RSS) but the structure and layout should still be fine to look at in the browser.

### Deploy

Then copy the output from the [_site_prod](_site_prod) directory to where your site is hosted.


## Staging deploy

If deploying to Github Pages, config your repo's Settings with the Github Pages functionality. Then push to the master branch to deploy.


## Dev deploy

### Serve

Build and the serve the site locally using the [_site](_site) directory.

#### Root path

```bash
$ script/dev/serve.sh
```

Open in the browser: http://localhost:4000

#### Subpath

Or, run this script instead to simulate running on a subpath (as if on Page Project on Github Pages).

```bash
$ script/dev/serve_subpath.sh
```

Open in the browser: http://localhost:5000/the-buckfever-underground/

Note the trailing forwardslash. An alternate port number is used here so that both servers can be run at the same time for test purposes.
