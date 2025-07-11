---
permalink: /research/
layout: single
author_profile: true
title: "Research"
tagby: false
years: [2025, 2024, 2023, 2022, 2021, 2020]
header:
  overlay_filter: 0.15
  overlay_image: /assets/images/Untitled.jpg
---

## Research Interests

Check out my current <a href="/assets/pdf/rs_cornelius_fritz.pdf" target="_blank">research statement</a> to get a feel for what I spend most of my time on.

## Preprints

{% bibliography -f preprint %}


## Publications

{% for y in page.years %}
  <h3  id="{{y}}" class="pubyear">{{y}}</h3>
  {% bibliography -f bibliography -q @*[year={{y}}]* %}
{% endfor %}


## Theses

-   [Statistical Approaches to Dynamic Networks in Society](https://edoc.ub.uni-muenchen.de/30395/). Dissertation, LMU Munich
-   [Dynamic Social Network Models for Time-Stamped Data](https://epub.ub.uni-muenchen.de/60292/). Master Thesis, LMU Munich
-   [Explorative Datenvisualisierung mit Shiny in R.](https://epub.ub.uni-muenchen.de/29575/). Bachelor Thesis, LMU Munich
