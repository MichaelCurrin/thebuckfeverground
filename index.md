---
---

{% capture tour_url %}
    {{ site.baseurl }}{% link _shows/2019_april_tour.md %}
{% endcapture %}
{% capture album_url %}
    {{ site.baseurl }}{% link _music/last_days_of_beautiful/index.md %}
{% endcapture %}


{% include image_simple.html
    image_path="/assets/images/promo/tour flyer.svg"
    description="Tour flyer"
%}

Official website of The Buckfever Underground. We are also on [Facebook](https://www.facebook.com/TheBuckfeverUnderground), together with you, your mother and dogs and babies you've never met and never will.


## 2019 tour shows

This April we're touring from Cape Town to Joburg. We've got at least one show a day between 11th and 27th April. See the full [Laaste Dae-toer gig list]({{ tour_url }}) for bookings, prices and venue details.

<div id="show-list"></div>
<script>
    (function () {
        var tour = [{
                date: "2019-04-11",
                title: "Stellenbosch – Trude Gunther se huis",
            },
            {
                date: "2019-04-12",
                title: "Bainskloof (Wellington) - McBains",
            },
            {
                date: "2019-04-13",
                title: "Hermanus – Hermanus Brewery",
            },
            {
                date: "2019-04-14",
                title: "Knysna – House of Louw Claassens & Pieter Verhoef",
            },
            {
                date: "2019-04-15",
                title: "Port Elizabeth – Jill’s House in Newton Park",
            },
            {
                date: "2019-04-15",
                title: "Grahamstown – The Provost Café",
            }, {
                date: "2019-04-17",
                title: "Lunchtime (11 am): Somerset East – Karoo Tech Hub",
            }, {
                date: "2019-04-17",
                title: "Evening: Cradock – Victoria Manor",
            }, {
                date: "2019-04-18",
                title: "Lunchtime (11 am): Bethulie – Bethulie Boekehotel",
            }, {
                date: "2019-04-18",
                title: "Evening: Smithfield – Bowling Club",
            }, {
                date: "2019-04-19",
                title: "Rosendal – Yolla’s",
            }, {
                date: "2019-04-20",
                title: "Joburg - Dunkelder Onafhanklike Teater",
            }, {
                date: "2019-04-21",
                title: "Pretoria – Marguerite se huis in Rietondale",
            }, {
                date: "2019-04-22",
                title: "Clarens – Mt Horeb Manor",
            }, {
                date: "2019-04-23",
                title: "Dewetsdorp – Die Stoep @ Gemsboklaan",
            }, {
                date: "2019-04-24",
                title: "Britstown – The Old Mill Coffee Shop",
            }, {
                date: "2019-04-25",
                title: "Graaff-Reinet – Hartland Huis",
            }, {
                date: "2019-04-26",
                title: "Brunch: Leeu-Gamka",
            }, {
                date: "2019-04-26",
                title: "Evening: Cape Town - Alma Café",
            }, {
                date: "2019-04-27",
                title: "Darling – Evita se Perron",
            },
        ];

        var today = new Date();
        tour = tour.filter(show => new Date(show.date) >= today);
        var div = document.getElementById('show-list');

        if (tour.length) {
            var p = document.createElement('p');
            p.innerHTML = "Upcoming shows: ";
            div.appendChild(p);

            var ul = document.createElement('ul');
            for (var show of tour) {
                let li = document.createElement('li');
                li.innerHTML = `<b>${show.date}</b> ${show.title}`;
                ul.appendChild(li);
            }
            div.appendChild(ul);
        } else {
            var p = document.createElement('p');
            p.innerHTML = "The tour is finished. Look out for our shows planned for May."
            div.appendChild(p);
        }
    })();
</script>

{% capture shirt_relative %}
    {{ "/assets/images/merch/last days tour shirt.jpg" | relative_url }}
{% endcapture %}
{% include image.html
    image_path="/assets/images/merch/last days tour shirt.jpg"
    out_link=shirt_relative
    description="Limited edition t-shirt, available only at shows during April. Cost: R220. Men's or Women's cut."
%}


## Latest album

Our new album is released. Listen and buy online - [The Last Days of Beautiful]({{ album_url }}).

{% include image.html
    image_path="/assets/images/albums/Last Days album pile original.jpg"
    description="Last Days of Beautiful albums"
%}


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
