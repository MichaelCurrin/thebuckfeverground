# Deploy
> Production deploy instructions

## FTP

Build:


```sh
$ make build-prod-local
```

Preview that built site.

```sh
$ make serve-prod
```


Then copy files from `_site` directory to FTP location.


## Remote build

Add as a static site on Github Pages or Netlify.

Build command:

```sh
$ build-prod-remote
```
