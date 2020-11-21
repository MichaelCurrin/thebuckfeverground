---
layout: home
title: The Buckfever Underground
---

{% capture album_url %}
    {% link _music/last_days_of_beautiful/index.md %}
{% endcapture %}

Official website of _The Buckfever Underground_. We are also on [Facebook](https://www.facebook.com/TheBuckfeverUnderground), together with you, your mother and dogs and babies you've never met and never will.

## Covid-19 announcement

{% include covid-banner.html %}

Read this [blog post]({% post_url 2020-04-16-show-solidarity %}) about an organization which you can support.


## Upcoming shows

{% assign unix_now = 'now' | date: '%s' | plus: 0 %}
{% assign shows = site.shows | sort: 'date' | reverse %}
{% assign anyPosts = false %}

{% for show in shows %}
{% assign post_time = show.date | date: '%s' | plus: 0 %}
{% if post_time >= unix_now %}
- {{ show.date | date: '%F' }}: [{{ show.title }}]({{ show.url | absolute_url }})
{% assign anyPosts = true %}
{% endif %}
{% endfor %}

{% unless anyPosts %}
No shows scheduled yet. Watch this space and our social media.
{% endunless %}


## Recent posts

{% assign posts = site.posts | sort: 'date' | reverse | slice: 0, 3 %}
{% for post in posts %}
- {{ post.date | date: '%F' }}: [{{ post.title }}]({{ post.url | absolute_url }})
{% endfor %}


## Latest album

We released this in 2019. Listen and buy it online here - [The Last Days of Beautiful]({{ album_url }}).

{% include image.html
    image_path="/assets/images/albums/Last Days album pile original.jpg"
    out_link=album_url
%}

> "Soos altyd is dit fassinerende werk wat die polsslag van die huidige Suid-Afrika feilloos weergee." – Luc Renders


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
