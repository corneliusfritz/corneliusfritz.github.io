---
permalink: /research/
layout: single
author_profile: true
#bibliography: library_publ.bib  
#nocite: '@*'
title: "Research"
#csl: 3d-research.csl
tagby: false
years: [2023, 2022, 2021, 2020]
#toc: true
#toc_label: "Year"
#toc_icon: "calendar"
header:
  overlay_filter: 0.15
  overlay_image: /assets/images/Untitled.jpg
  
---

Research Interests
---------------

+ Dynamic and Static Social Network Analysis 
  + Relational Event Models
  + Temporal Exponential Random Graph Models 
  + Stochastic Actor-Oriented Models
  + Stochastic Block Models 
  + Latent Space Models 
+ Optimization and its statistical Properties
  + Variants of EM Algorithms 
  + Interrelations between Multiple Imputation, Expectation Maximization, and Data Augmentation Algorithms 
  + Quantification of different Types of Uncertainties    
  + Applications to Latent Variable Models, models including intractable constants, and dynamic network models 
+ General Statistical Modelling 
  + Combination of Statistical and Deep Learning Methods
  + Models including Missing Data
  + Semiparametric Smoothing Methods 
  + Epidemiological Models (Nowcasting, Backprojection, ...)  
  + Models based on Counting Processes
  + Decomposition of different Types of Uncertainties  
  

Publications
---------------

{% for y in page.years %}
  <h3  id="{{y}}" class="pubyear">{{y}}</h3>
  {% bibliography -f bibliography -q @*[year={{y}}]* %}
{% endfor %}

Preprints
---------------

{% bibliography -f preprint %}

Theses
---------------
+ [Statistical Approaches to Dynamic Networks in Society](https://edoc.ub.uni-muenchen.de/30395/). Dissertation, LMU Munich
+ [Dynamic Social Network Models for Time-Stamped Data](https://epub.ub.uni-muenchen.de/60292/). Master Thesis, LMU Munich
+ [Explorative Datenvisualisierung mit Shiny in R.](https://epub.ub.uni-muenchen.de/29575/). Bachelor Thesis, LMU Munich


