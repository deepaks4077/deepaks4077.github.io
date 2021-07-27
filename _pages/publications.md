---
layout: page
permalink: /publications/
title: publications
years: [2020, 2019]
ppr_years: [2021]
nav: true
---

<div class="publications">
<h1>Manuscripts <small>&</small> Preprints</h1>

{% for y in page.ppr_years %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f preprints -q @*[year={{y}}]* %}
{% endfor %}

</div>

<div class="publications">
<h1>Conferences <small> & </small> Workshops</h1>

{% for y in page.years %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}

</div>
