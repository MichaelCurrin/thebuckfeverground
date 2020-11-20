---
title: Music
permalink: /music/
---

## Listen

Hear our music online through these channels:

- [Band Camp](https://buckfeverunderground.bandcamp.com/)
- [Apple Music](https://itunes.apple.com/ca/artist/the-buckfever-underground/265957199)
- [SoundCloud](https://soundcloud.com/thebuckfeverunderground)
- [CD Baby](https://store.cdbaby.com/Artist/TheBuckfeverUnderground)


## Discography

See details of some of our albums below, including lyrics and pricing. To buy, see the [Merch]({% link _pages/merch.md %}) page.

<ul>
    {% assign albums = site.music | where: "layout", "album" | sort: 'date' | reverse %}
    {% for album in albums %}
        <li>
            {{ album.date | date: "%Y" }} - <a href="{{ album.url | relative_url }}">{{ album.title}}</a>
        </li>
    {% endfor %}
</ul>

<br>

{% include image.html
    image_path="/assets/images/photos/prys die here god the buckfever underground.jpg"
    description="You wonder how those lyrics happen?"
%}
