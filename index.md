---
layout: home
title: The Buckfever Underground
---

{% capture satelliet_url %}
    {% link _music/satelliet/index.md %}
{% endcapture %}

{% capture last_days_url %}
    {% link _music/last-days-of-beautiful/index.md %}
{% endcapture %}

Official website of _The Buckfever Underground_. We are also on [Facebook](https://www.facebook.com/TheBuckfeverUnderground), together with you, your mother and dogs and babies you've never met and never will.


## Covid-19 announcement

{% include covid-banner.html %}

Read this [blog post]({% post_url 2020-04-16-show-solidarity %}) about an organization which you can support.


## Upcoming shows

{% assign unix_now = 'now' | date: '%s' | plus: 0 %}
{% assign shows = site.shows | sort: 'date' | reverse %}
{% assign any_posts = false %}

{% for show in shows %}
{% assign post_time = show.date | date: '%s' | plus: 0 %}
{% if post_time >= unix_now %}
- {{ show.date | date: '%F' }}: [{{ show.title }}]({{ show.url | absolute_url }})
{% assign any_posts = true %}
{% endif %}
{% endfor %}

{% unless any_posts %}
No shows scheduled yet. Watch this space and our social media.
{% endunless %}


## Latest album

Our new 6-track EP [Satelliet]({{ satelliet_url }}) now is available as a digital album.

During lockdown in 2020, we recorded this album together without being in the same room. We sent recordings to each other and then mixed them together as full tracks.

{% comment %}
This compresses the image too much.

{% include image-resize.html
    path="/assets/images/albums/satelliet.jpg"
    target=satelliet_url
    options='500x500>'
%}
{% endcomment%}

<div align="center">
    <a href="{{ satelliet_url }}">
        <img src="{% link assets/images/albums/satelliet.jpg %}"
            alt="{{ page.title }} album cover"
            class="medium">
    </a>
</div>
<br>


## Recent posts

{% assign posts = site.posts | sort: 'date' | reverse | slice: 0, 3 %}
{% for post in posts %}
- {{ post.date | date: '%F' }}: [{{ post.title }}]({{ post.url | absolute_url }})
{% endfor %}


## Photos

{% include image.html
    image_path="/assets/images/photos/2018/woodstock 16x9.jpg"
    out_link="https://www.instagram.com/p/BjDP37clPpo/"
    description="Photo: Alice Inggs."
%}

{% include image.html
    image_path="/assets/images/shows/2018/Alex Bar MH2A5894edit1-reduced.JPG"
    description="Alexander Bar show during 2018 tour. Photo: Dirk Hugo."
%}
