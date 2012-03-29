---
layout: default
---

<div class="page-header">
  <h1>{{ page.category | replace:"-"," " | capitalize }} - {{ page.title }}</h1>
</div>

* Table of Contents
{:toc}

{{ content }}

<h6>{{ page.date | date: "%A, %B %d, %Y" }}</h6>
