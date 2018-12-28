---
title: Shows
permalink: /shows
---

<ul>
  {% for show in site.shows %}
    <li>
      <h2><a href="{{ show.url | relative_url }}">{{ show.title }}</a></h2>
      <p>{{ show.excerpt }}</p>
    </li>
  {% endfor %}
</ul>
