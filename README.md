# The Buckfever Underground
> Static site content for a South African band that performs poetry with improvised music

_Author: [Michael Currin](https://github.com/MichaelCurrin) (web developer and band member)_.

The project uses [Jekyll](http://jekyllrb.com/) to build a static website for The Buckfever Underground. The band's homepage is [thebuckfeverunderground.co.za](http://thebuckfeverunderground.co.za/) and this project is also hosted at [Github Pages site](https://michaelcurrin.github.io/thebuckfeverground/) as a staging environment.


## Installation

Follow this [Jekyll setup and run gist](https://gist.github.com/MichaelCurrin/1085ab164550b31272699920b5549d4b) to get the repo and dependencies setup.

```bash
$ script/install.sh
```


## Production deploy

Build the static site with configuration for a remote-hosted site other than Github Pages.

```bash
$ script/prod/build.sh
```

Then copy the output from generated `_site` directory to where your site is hosted.


## Staging deploy

If deploying to Github Pages, config your repo's Settings with the Github Pages functionality. Then push to the master branch to deploy.

The [main config](_config.yml) file will be referenced.


## Run on dev environment

### Build

Build site so it is ready for deployment. The [prod config](_config_prod.yml) file values will override the main config values.

```bash
$ script/dev/build.sh
```

### Serve

Build and the serve the site locally.

#### Root path

```bash
$ script/dev/serve.sh
```

Open in the browser: http://localhost:4000

#### Subpath

Run this locally to simulate running on a subpath (as if on Page Project on Github Pages).

```bash
$ script/dev/serve_subpath.sh
```

Open in the browser: http://localhost:5000/the-buckfever-underground/

Note the trailing forwardslash. An alternate port number is used here so that both servers can be run at the same time for test purposes.


## Rights

You may use the structure or some code of this project to help build your own sites. However, the rights to the content remain with band or the original artists.

Inspiration for some layout of the site pages comes from [Sample Band Sites](https://bandzoogle.com/sample-band-sites).
