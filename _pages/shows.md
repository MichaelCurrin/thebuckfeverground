---
title: Shows
permalink: /shows/
---

We are available for private bookings. We love playing small, intimate shows in lounges, gardens or on a stoep.

Email <info@toastcoetzer.com> if you are interested in hosting The Buckfever Underground, and we’ll work out a plan.

<ul class="shows-list">
    {% assign sorted_shows = site.shows | sort: 'date' | reverse %}
    {% for show in sorted_shows %}
    <li>
        <h2 class="post-title p-name">
            <a href="{{ show.url | relative_url }}">
                {{ show.title }}
            </a>
        </h2>
        <p class="post-meta">
            {{ show.date | date: "%b %-d, %Y" }}
        </p>
        <p>
            {{ show.excerpt }}
        </p>
    </li>
    {% endfor %}
</ul>
