---
title: Blog
permalink: /blog/
---

<ul>
  {% for post in site.posts %}
    <li>
      <h2 class="post-title p-name"><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h2>
      <p class="post-meta">
        {{ post.date | date: "%b %-d, %Y" }}
        {% if post.categories.size > 0 %}
          - {{ post.categories | first | capitalize }}
        {% endif %}
      </p>
      <p>{{ post.excerpt }}</p>
    </li>
  {% endfor %}
</ul>
