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
<h2>
  <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="vertical-align: middle; margin-right: 0.3em; color: #2f80ed; display: inline-block;">
    <circle cx="18" cy="5" r="3"></circle>
    <circle cx="6" cy="12" r="3"></circle>
    <circle cx="18" cy="19" r="3"></circle>
    <line x1="8.59" y1="13.51" x2="15.42" y2="17.49"></line>
    <line x1="15.41" y1="6.51" x2="8.59" y2="10.49"></line>
  </svg>
  Research
</h2>

My research focuses on developing statistical methodologies and machine learning models for complex, dependent data structures, with a particular emphasis on network science and social systems. My main research directions include:

* **Dynamic Networks & Relational Event Models**: Developing stochastic frameworks (such as tie-oriented relational and durational event models) to capture time-stamped, event-based social interactions, online behaviors, and international state relations.
* **Joint Models for Attributes and Networks**: Developing statistical methods and frameworks to jointly model network structure alongside node-level attributes, capturing selection and peer influence dynamics.
* **Scalable Network Models**: Designing estimation algorithms and diagnostic tools for large-scale networks, specifically hierarchical exponential-family models (ERGM) and signed models (SERGM) containing positive and negative ties.
* **Applied Spatio-temporal Modeling**: Collaborating with interdisciplinary teams to analyze epidemiological data (e.g., spatio-temporal disease spread forecasting) and political science data (e.g., intrastate conflict forecasting and aircraft trade).

<div class="publication-years-tabs" style="margin-top: 2em;">
  <button class="main-tab-btn" data-main-target="preprints">Preprints</button>
  <button class="main-tab-btn" data-main-target="publications">Publications</button>
  <button class="main-tab-btn" data-main-target="theses">Theses</button>
  <a href="/assets/pdf/rs_cornelius_fritz.pdf" target="_blank" class="main-tab-btn">Research Statement</a>
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

<section id="group" markdown="1" style="padding-top: 1.5em; margin-bottom: 3.5em;">
<h2>
  <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="vertical-align: middle; margin-right: 0.3em; color: #2f80ed; display: inline-block;">
    <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
    <circle cx="9" cy="7" r="4"></circle>
    <path d="M23 21v-2a4 4 0 0 0-3-3.87"></path>
    <path d="M16 3.13a4 4 0 0 1 0 7.75"></path>
  </svg>
  Group
</h2>

Our research group focuses on statistical modeling, network analysis, and dependent data.

### PhD Students

<div style="margin-top: 1.5em;">
  <div class="member-card" style="display: flex; align-items: flex-start; gap: 1.5em; margin-bottom: 2.5em; flex-wrap: wrap;">
    <img src="{{ '/assets/images/daniel.jpg' | relative_url }}" alt="Daniel Seussler" style="width: 85px; height: 85px; border-radius: 50%; object-fit: cover; border: 2px solid rgba(0, 0, 0, 0.08); flex-shrink: 0;" />
    <div style="flex: 1; min-width: 250px;">
      <h4 style="margin: 0 0 0.4em 0; font-size: 1.1em; font-weight: 700; color: #1d1d1f;"><a href="https://dseussler.github.io/" target="_blank" style="text-decoration: none; color: #2f80ed;">Daniel Seussler</a> <span style="font-size: 0.85em; font-weight: normal; color: #6e6e73; margin-left: 0.5em;">(Trinity College Dublin)</span></h4>
      <p style="margin: 0; font-size: 0.95em; line-height: 1.5; color: #515154;"><strong>Research:</strong> Statistical modeling of public health dynamics and healthcare accessibility using data from Madagascar.</p>
    </div>
  </div>

  <div class="member-card" style="display: flex; align-items: flex-start; gap: 1.5em; margin-bottom: 2.5em; flex-wrap: wrap;">
    <img src="{{ '/assets/images/marc.jpg' | relative_url }}" alt="Marc Schalberger" style="width: 85px; height: 85px; border-radius: 50%; object-fit: cover; border: 2px solid rgba(0, 0, 0, 0.08); flex-shrink: 0;" />
    <div style="flex: 1; min-width: 250px;">
      <h4 style="margin: 0 0 0.4em 0; font-size: 1.1em; font-weight: 700; color: #1d1d1f;"><a href="https://mschalberger.github.io/" target="_blank" style="text-decoration: none; color: #2f80ed;">Marc Schalberger</a> <span style="font-size: 0.85em; font-weight: normal; color: #6e6e73; margin-left: 0.5em;">(FU Berlin)</span></h4>
      <p style="margin: 0; font-size: 0.95em; line-height: 1.5; color: #515154;"><strong>Research:</strong> Network science, signed exponential random graph models (SERGM), and scalable algorithms for large-scale network data.</p>
    </div>
  </div>
</div>
</section>

<hr style="border: 0; height: 1px; background: rgba(0,0,0,0.08); margin: 3em 0;">

<section id="software" markdown="1" style="padding-top: 1.5em; margin-bottom: 3.5em;">
<h2>
  <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="vertical-align: middle; margin-right: 0.3em; color: #2f80ed; display: inline-block;">
    <polyline points="16 18 22 12 16 6"></polyline>
    <polyline points="8 6 2 12 8 18"></polyline>
  </svg>
  Software
</h2>

<div class="software-grid">
  {% for pkg in site.data.software %}
  <div class="software-card">
    <h3 class="software-title">{{ pkg.title }}</h3>
    <p class="software-subtitle">{{ pkg.subtitle }}</p>
    <div class="software-actions">
      {% if pkg.url %}
      {% if pkg.url contains "://" %}
      <a href="{{ pkg.url }}" target="_blank" class="btn btnId btnPub--supplement">Website</a>
      {% else %}
      <a href="{{ pkg.url | relative_url }}" class="btn btnId btnPub--supplement">Website</a>
      {% endif %}
      {% endif %}
      {% for action in pkg.actions %}
      {% if action.url contains "://" %}
      <a href="{{ action.url }}" target="_blank" class="btn btnId {{ action.class }}">{{ action.text }}</a>
      {% else %}
      <a href="{{ action.url | relative_url }}" class="btn btnId {{ action.class }}">{{ action.text }}</a>
      {% endif %}
      {% endfor %}
      {% if pkg.downloads %}
      <span class="btn btnId btnPub--downloads" style="cursor: default; pointer-events: none; opacity: 0.8; background-color: #f5f5f7; border-color: rgba(0, 0, 0, 0.06);">
        <svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round" style="color: #2f80ed; margin-right: 0.3em; display: inline-block; vertical-align: middle;">
          <path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"></path>
          <polyline points="7 10 12 15 17 10"></polyline>
          <line x1="12" y1="15" x2="12" y2="3"></line>
        </svg>
        {{ pkg.downloads }} / month
      </span>
      {% endif %}
    </div>
  </div>
  {% endfor %}
</div>

<div style="margin-top: 3.5em;">
  <div style="background-color: #ffffff; border: 1px solid rgba(0, 0, 0, 0.06); border-radius: 18px; padding: 1.5em; box-shadow: 0 4px 24px rgba(0, 0, 0, 0.015);">
    <img src="{{ '/assets/images/software_downloads.png' | relative_url }}" alt="CRAN Downloads Over Time" class="center-image" style="width: 100%; height: auto; border-radius: 8px;" />
  </div>
</div>
</section>

<hr style="border: 0; height: 1px; background: rgba(0,0,0,0.08); margin: 3em 0;">

<section id="cv" markdown="1" style="padding-top: 1.5em; margin-bottom: 2em;">
<h2>
  <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="vertical-align: middle; margin-right: 0.3em; color: #2f80ed; display: inline-block;">
    <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
    <polyline points="14 2 14 8 20 8"></polyline>
    <line x1="16" y1="13" x2="8" y2="13"></line>
    <line x1="16" y1="17" x2="8" y2="17"></line>
    <polyline points="10 9 9 9 8 9"></polyline>
  </svg>
  Curriculum Vitae
</h2>

<iframe class="cv-iframe" src="{{ '/assets/pdf/cv_cornelius_fritz.pdf' | relative_url }}" style="width:100%; height:650px; border: 1px solid rgba(0,0,0,0.08); border-radius: 8px;" frameborder="0"></iframe>

<div class="mobile-cv-note">
  <p>
    <i class="fas fa-info-circle" style="margin-right: 0.5em; color: #2f80ed;"></i>
    PDF previewing is limited on mobile devices. Use the button below to view or download my complete CV.
  </p>
</div>

<div style="margin-top: 2.5em; text-align: center;">
  <a href="/assets/pdf/cv_cornelius_fritz.pdf" class="btn btnId btnPub--download" target="_blank" style="font-size: 0.95em !important; padding: 0.6em 1.8em !important; border-radius: 30px !important; text-decoration: none !important;">
    <i class="fas fa-file-pdf" style="margin-right: 0.5em;"></i> Download CV (PDF)
  </a>
</div>
</section>
