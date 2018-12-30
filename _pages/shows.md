---
title: Shows
permalink: /shows/
---

<ul>
    {% assign sorted_shows = site.shows | sort: 'date' | reverse %}
    {% for show in sorted_shows %}
        <li>
            <h2><a href="{{ show.url | relative_url }}">{{ show.title }}</a></h2>
             <p>{{ show.excerpt }}</p>
        </li>
    {% endfor %}
</ul>
