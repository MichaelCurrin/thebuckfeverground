---
title: Press
permalink: /press/
---

<ul>
    {% assign ordered_press = site.press | sort: 'date' | reverse %}
    {% for item in ordered_press %}
        <li>
            <h2><a href="{{ item.url | relative_url }}">{{ item.title }}</a></h2>
            <p>{{ item.content | markdownify }}</p>
        </li>
    {% endfor %}
</ul>
