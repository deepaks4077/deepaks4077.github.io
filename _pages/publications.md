---
layout: page
permalink: /publications/
title: Publications
years: [2021, 2020, 2019]
ppr_years: []
nav: true
nav_order: 2
---

{% if pages.ppr_years.size > 0 %}
<div class="publications">
    <h1>Manuscripts <small>&</small> Preprints</h1>

    {% for y in page.ppr_years %}
      <h2 class="year">{{y}}</h2>
      {% bibliography -f preprints -q @*[year={{y}}]* %}
    {% endfor %}
</div>
{% endif %}


<div class="publications">
<h1>Conferences <small> & </small> Workshops</h1>

{% bibliography %}

</div>
