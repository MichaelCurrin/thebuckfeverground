---
title: Music
permalink: /music/
---

## Listen

Hear our music online through these channels:

- [Band Camp](https://buckfeverunderground.bandcamp.com/)
- [Apple Music](https://itunes.apple.com/ca/artist/the-buckfever-underground/265957199)
- [Soundcloud](https://soundcloud.com/thebuckfeverunderground)
- [CD Baby](https://store.cdbaby.com/Artist/TheBuckfeverUnderground)


## Discography

How can I [order]({{ site.baseurl }}{% link _pages/merch.md %}) a CD?

See details of album releases below, including pricing and lyrics.

<ul>
    {% assign albums = site.music | where: "layout", "album" | sort: 'date' | reverse %}
    {% for album in albums %}
        <li>
            {{ album.date | date: "%Y" }} - <a href="{{ album.url | relative_url }}">{{ album.title}}</a>
        </li>
    {% endfor %}
</ul>
