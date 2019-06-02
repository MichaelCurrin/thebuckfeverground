---
---

{% capture tour_url %}
    {{ site.baseurl }}{% link _shows/2019_april_tour.md %}
{% endcapture %}
{% capture album_url %}
    {{ site.baseurl }}{% link _music/last_days_of_beautiful/index.md %}
{% endcapture %}

Official website of **The Buckfever Underground**. We are also on [Facebook](https://www.facebook.com/TheBuckfeverUnderground), together with you, your mother and dogs and babies you've never met and never will.


## Blog

{% assign posts = site.posts | sort: 'date' | reverse | slice: 0, 3 %}
{% for post in posts %}
- {{ post.date | date: '%F' }}: [{{ post.title }}]({{ post.url | absolute_url }})
{% endfor %}


## Shows

{% assign shows = site.shows | sort: 'date' | reverse| slice: 0, 3 %}
{% for show in shows %}
- {{ show.date | date: '%F' }}: [{{ show.title }}]({{ show.url | absolute_url }})
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
