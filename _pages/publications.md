---
layout: page
permalink: /publications/
title: publications
years: [2020, 2019]
ppr_years: [2021]
nav: true
nav_order: 2
---

<!-- _pages/publications.md -->

<!-- Bibsearch Feature -->

{% include bib_search.liquid %}

<div class="publications">
<h1>Manuscripts <small>&</small> Preprints</h1>

{% for y in page.ppr_years %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f preprints -q @*[year={{y}}]* %}
{% endfor %}

</div>

<div class="publications">
<h1>Conferences <small> & </small> Workshops</h1>

{% bibliography %}

</div>
