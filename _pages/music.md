---
title: Music
permalink: /music/
---

## Listen

Hear our music online through these channels:

- [Band Camp](https://buckfeverunderground.bandcamp.com/)
- [Apple Music](https://itunes.apple.com/ca/artist/the-buckfever-underground/265957199)
- [Soundcloud](https://soundcloud.com/thebuckfeverunderground)


## Discography

See how list of albums below, including the lyrics for the poems.

<ul>
    {% assign albums = site.music | where: "layout", "album" %}
    {% for album in albums %}
        <li>
            <a href="{{ album.url }}">{{ album.title}}</a>
        </li>
    {% endfor %}
</ul>
