---
permalink: /
layout: single
title: "Cornelius Fritz"
header:
  overlay_image: /assets/images/background.JPG
  hero_height: "350px"
  hero_y_position: "60%"
show_overlay_title: false
share: false
classes: wide
author_profile: true
years: [2025, 2024, 2023, 2022, 2021, 2020]
---

<section id="about" markdown="1" style="padding-top: 1em; margin-bottom: 3.5em;">
I am Cornelius Fritz, an assistant professor at the [School for Computer Science and Statistics](https://www.tcd.ie/scss/) at [Trinity College Dublin](https://www.tcd.ie/). Before that I was a postdoc at Penn State working with [Michael Schweinberger](https://science.psu.edu/stat/people/mus47) and [David Hunter](https://science.psu.edu/stat/people/drh20) on network models under local dependence. 
I obtained my Ph.D. in statistics under the supervision of [Göran Kauermann](https://www.en.wisostat.statistik.uni-muenchen.de/personen/lehrstuhlinhaber/kauermann/index.html). 

Smart devices collecting interpersonal data surround us at every move and facilitate novel ways of measuring and understanding social behavior. The collected data provide planetary-scale views of online interpersonal relations, allowing a more nuanced look at bias in information diffusion, polarization, and echo chamber effects. In my research, I use statistics to learn from such network data to answer questions posed within the social sciences in uncertain and changing environments. <br>

My research mainly originates from multidisciplinary collaborations with social scientists approaching me with data and questions revolving around networks. As a statistician, I operate in two worlds: the *real* world, which encompasses observed data with all its imperfections and substantive knowledge of the subject matter, and the *model* world, which is an artificial representation of the *real* world characterized by a stochastic model. I develop novel data analysis techniques by combining statistical and machine learning with substantive theory to bridge the gap between the *real* and *model* world.

If you have any questions on some of my papers, want to discuss some research topic, or just want to get in touch, you can best reach me via [email](mailto:fritzc@tcd.ie) or [Twitter](https://twitter.com/cornelius_fritz).
</section>

<hr style="border: 0; height: 1px; background: rgba(0,0,0,0.08); margin: 3em 0;">

<section id="research" markdown="1" style="padding-top: 1.5em; margin-bottom: 3.5em;">
<h2>Research</h2>

Check out my current <a href="/assets/pdf/rs_cornelius_fritz.pdf" target="_blank">research statement</a> to get a feel for what I spend most of my time on.

<div class="publication-years-tabs" style="margin-top: 1.5em;">
  <button class="main-tab-btn" data-main-target="preprints">Preprints</button>
  <button class="main-tab-btn" data-main-target="publications">Publications</button>
  <button class="main-tab-btn" data-main-target="theses">Theses</button>
</div>

<div id="sub-years-tabs" class="sub-years-container">
  {% for y in page.years %}
  <button class="year-tab-btn" data-year="{{ y }}">{{ y }}</button>
  {% endfor %}
</div>

<div class="publication-lists-container">
  <div id="pub-year-preprints" class="publications-by-year" style="display: none;">
    {% bibliography -f preprint %}
  </div>
  {% for y in page.years %}
  <div id="pub-year-{{ y }}" class="publications-by-year" style="display: none;">
    {% bibliography -f bibliography -q @*[year={{y}}]* %}
  </div>
  {% endfor %}
  <div id="pub-year-theses" class="publications-by-year" style="display: none;">
    <ul style="list-style-type: disc; margin-left: 20px; padding-left: 0;">
      <li style="margin-bottom: 0.5em;"><a href="https://edoc.ub.uni-muenchen.de/30395/" target="_blank">Statistical Approaches to Dynamic Networks in Society</a>. Dissertation, LMU Munich</li>
      <li style="margin-bottom: 0.5em;"><a href="https://epub.ub.uni-muenchen.de/60292/" target="_blank">Dynamic Social Network Models for Time-Stamped Data</a>. Master Thesis, LMU Munich</li>
      <li style="margin-bottom: 0.5em;"><a href="https://epub.ub.uni-muenchen.de/29575/" target="_blank">Explorative Datenvisualisierung mit Shiny in R.</a>. Bachelor Thesis, LMU Munich</li>
    </ul>
  </div>
</div>
</section>

<hr style="border: 0; height: 1px; background: rgba(0,0,0,0.08); margin: 3em 0;">

<section id="packages" markdown="1" style="padding-top: 1.5em; margin-bottom: 3.5em;">
<h2>Packages</h2>

<div class="package-grid">

  <div class="package-card">
    <h3 class="package-title"><a href="https://www.corneliusfritz.com/iglm" target="_blank">iglm</a></h3>
    <p class="package-subtitle">Regression under Interference in Connected Populations</p>
    <div class="package-actions">
      <a href="https://www.corneliusfritz.com/assets/pdf/iglm.pdf" target="_blank" class="btn btnId btnPub--download">Preprint</a>
      <a href="https://cran.r-project.org/web/packages/iglm/index.html" target="_blank" class="btn btnId btnPub--BibTex">CRAN</a>
    </div>
  </div>

  <div class="package-card">
    <h3 class="package-title"><a href="https://www.corneliusfritz.com/bigergm" target="_blank">bigergm</a></h3>
    <p class="package-subtitle">Fit, Simulate, and Diagnose Hierarchical Exponential-Family Models for Big Networks</p>
    <div class="package-actions">
      <a href="https://cran.r-project.org/web/packages/bigergm/index.html" target="_blank" class="btn btnId btnPub--BibTex">CRAN</a>
      <a href="https://www.corneliusfritz.com/assets/pdf/bigergm_sunbelt.pdf" target="_blank" class="btn btnId btnPub--supplement">Slides (Michael)</a>
      <a href="https://www.corneliusfritz.com/presentation/bigergm.html" target="_blank" class="btn btnId btnPub--supplement">Slides (Cornelius)</a>
    </div>
  </div>

  <div class="package-card">
    <h3 class="package-title"><a href="https://corneliusfritz.github.io/redeem/" target="_blank">redeem</a></h3>
    <p class="package-subtitle">Relational Event and Durational Event Models</p>
    <div class="package-actions">
      <a href="https://arxiv.org/abs/2504.00049" target="_blank" class="btn btnId btnPub--download">Preprint</a>
    </div>
  </div>

  <div class="package-card">
    <h3 class="package-title"><a href="https://cran.r-project.org/package=ergm.sign" target="_blank">ergm.sign</a></h3>
    <p class="package-subtitle">Fit, Simulate, and Diagnose Signed Exponential Random Graph Models (SERGMs)</p>
    <div class="package-actions">
      <a href="https://cran.r-project.org/web/packages/ergm.sign/index.html" target="_blank" class="btn btnId btnPub--BibTex">CRAN</a>
      <a href="https://github.com/mschalberger/ergm.sign.statnet" target="_blank" class="btn btnId btnPub--supplement">GitHub</a>
    </div>
  </div>

</div>
</section>

<hr style="border: 0; height: 1px; background: rgba(0,0,0,0.08); margin: 3em 0;">

<section id="cv" markdown="1" style="padding-top: 1.5em; margin-bottom: 2em;">
<h2>Curriculum Vitae</h2>

<iframe src="{{ '/assets/pdf/cv_cornelius_fritz.pdf' | relative_url }}" style="width:100%; height:650px; border: 1px solid rgba(0,0,0,0.08); border-radius: 8px;" frameborder="0"></iframe>

<div style="margin-top: 2.5em; text-align: center;">
  <a href="/assets/pdf/cv_cornelius_fritz.pdf" class="btn btnId btnPub--download" target="_blank" style="font-size: 0.95em !important; padding: 0.6em 1.8em !important; border-radius: 30px !important; text-decoration: none !important;">
    <i class="fas fa-file-pdf" style="margin-right: 0.5em;"></i> Download CV (PDF)
  </a>
</div>
</section>
