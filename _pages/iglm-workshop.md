---
layout: single
title: "iglm Workshop"
permalink: /iglm-workshop/
classes: wide
---

<div class="software-grid">
  <!-- Card for Michael's Slides -->
  <div class="software-card" style="margin-bottom: 1.5em;">
    <h3 class="software-title">Slides: Introduction & Methodology</h3>
    <p class="software-subtitle" style="font-size: 0.95em; color: #6e6e73; margin-bottom: 0.8em;">Presented by Michael Schweinberger</p>
    <div class="software-actions">
      <a href="{{ '/assets/workshop/sunbelt.2026.pdf' | relative_url }}" target="_blank" class="btn btnId btnPub--download">
        <i class="fas fa-file-pdf" style="margin-right: 0.5em;"></i> Download Slides (PDF)
      </a>
    </div>
  </div>

  <!-- Card for Cornelius's Slides -->
  <div class="software-card" style="margin-bottom: 1.5em;">
    <h3 class="software-title">Slides: Application & Implementation</h3>
    <p class="software-subtitle" style="font-size: 0.95em; color: #6e6e73; margin-bottom: 0.8em;">Presented by Cornelius Fritz</p>
    <div class="software-actions">
      <a href="{{ '/assets/workshop/iglm.html' | relative_url }}" target="_blank" class="btn btnId btnPub--supplement">
        <i class="fas fa-file-code" style="margin-right: 0.5em;"></i> Open Slides (HTML)
      </a>
    </div>
  </div>
</div>

<h2 style="margin-top: 2.5em; margin-bottom: 0.8em; font-weight: 700; letter-spacing: -0.5px;">
  <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="vertical-align: middle; margin-right: 0.3em; color: #2f80ed; display: inline-block;">
    <path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"></path>
    <polyline points="7 10 12 15 17 10"></polyline>
    <line x1="12" y1="15" x2="12" y2="3"></line>
  </svg>
  Workshop Dataset
</h2>

<div class="software-card" style="margin-bottom: 1.5em; background: linear-gradient(135deg, #ffffff 0%, #f9f9fb 100%); border-left: 4px solid #2f80ed; padding: 1.6em !important;">
  <h3 class="software-title" style="display: flex; align-items: center; gap: 0.5em; margin: 0 0 0.5em 0 !important; font-size: 1.25em !important; font-weight: 700 !important; letter-spacing: -0.3px;">
    <i class="fas fa-database" style="color: #2f80ed;"></i> Dataset Files
  </h3>
  
  <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(240px, 1fr)); gap: 1em; margin-top: 1em;">
    <!-- neighborhood.csv -->
    <div style="background: #ffffff; padding: 1em; border-radius: 12px; border: 1px solid rgba(0, 0, 0, 0.05); display: flex; flex-direction: column; justify-content: space-between; transition: all 0.3s ease; box-shadow: 0 2px 8px rgba(0,0,0,0.01);" 
         onmouseover="this.style.transform='translateY(-2px)'; this.style.boxShadow='0 8px 16px rgba(0,0,0,0.04)'; this.style.borderColor='rgba(47, 128, 237, 0.2)';" 
         onmouseout="this.style.transform='none'; this.style.boxShadow='0 2px 8px rgba(0,0,0,0.01)'; this.style.borderColor='rgba(0, 0, 0, 0.05)';">
      <div>
        <div style="font-weight: 600; color: #1d1d1f; font-size: 0.95em; display: flex; align-items: center; gap: 0.5em;">
          <i class="fas fa-file-csv" style="color: #27ae60; font-size: 1.2em;"></i> neighborhood.csv
        </div>
        <div style="font-size: 0.8em; color: #86868b; margin-top: 0.4em; margin-bottom: 0.8em;">
          Neighborhood matrix / interference definition (184 KB).
        </div>
      </div>
      <a href="{{ '/assets/workshop/neighborhood.csv' | relative_url }}" download="neighborhood.csv" class="btn btnId" style="margin: 0; width: 100%; box-sizing: border-box; display: inline-block;">
        <i class="fas fa-download" style="margin-right: 0.4em;"></i> Download
      </a>
    </div>

    <!-- x_attribute.csv -->
    <div style="background: #ffffff; padding: 1em; border-radius: 12px; border: 1px solid rgba(0, 0, 0, 0.05); display: flex; flex-direction: column; justify-content: space-between; transition: all 0.3s ease; box-shadow: 0 2px 8px rgba(0,0,0,0.01);" 
         onmouseover="this.style.transform='translateY(-2px)'; this.style.boxShadow='0 8px 16px rgba(0,0,0,0.04)'; this.style.borderColor='rgba(47, 128, 237, 0.2)';" 
         onmouseout="this.style.transform='none'; this.style.boxShadow='0 2px 8px rgba(0,0,0,0.01)'; this.style.borderColor='rgba(0, 0, 0, 0.05)';">
      <div>
        <div style="font-weight: 600; color: #1d1d1f; font-size: 0.95em; display: flex; align-items: center; gap: 0.5em;">
          <i class="fas fa-file-csv" style="color: #27ae60; font-size: 1.2em;"></i> x_attribute.csv
        </div>
        <div style="font-size: 0.8em; color: #86868b; margin-top: 0.4em; margin-bottom: 0.8em;">
          Independent variable/attribute covariates (994 B).
        </div>
      </div>
      <a href="{{ '/assets/workshop/x_attribute.csv' | relative_url }}" download="x_attribute.csv" class="btn btnId" style="margin: 0; width: 100%; box-sizing: border-box; display: inline-block;">
        <i class="fas fa-download" style="margin-right: 0.4em;"></i> Download
      </a>
    </div>

    <!-- y_attribute.csv -->
    <div style="background: #ffffff; padding: 1em; border-radius: 12px; border: 1px solid rgba(0, 0, 0, 0.05); display: flex; flex-direction: column; justify-content: space-between; transition: all 0.3s ease; box-shadow: 0 2px 8px rgba(0,0,0,0.01);" 
         onmouseover="this.style.transform='translateY(-2px)'; this.style.boxShadow='0 8px 16px rgba(0,0,0,0.04)'; this.style.borderColor='rgba(47, 128, 237, 0.2)';" 
         onmouseout="this.style.transform='none'; this.style.boxShadow='0 2px 8px rgba(0,0,0,0.01)'; this.style.borderColor='rgba(0, 0, 0, 0.05)';">
      <div>
        <div style="font-weight: 600; color: #1d1d1f; font-size: 0.95em; display: flex; align-items: center; gap: 0.5em;">
          <i class="fas fa-file-csv" style="color: #27ae60; font-size: 1.2em;"></i> y_attribute.csv
        </div>
        <div style="font-size: 0.8em; color: #86868b; margin-top: 0.4em; margin-bottom: 0.8em;">
          Dependent variable/outcome attributes (994 B).
        </div>
      </div>
      <a href="{{ '/assets/workshop/y_attribute.csv' | relative_url }}" download="y_attribute.csv" class="btn btnId" style="margin: 0; width: 100%; box-sizing: border-box; display: inline-block;">
        <i class="fas fa-download" style="margin-right: 0.4em;"></i> Download
      </a>
    </div>

    <!-- z_network.csv -->
    <div style="background: #ffffff; padding: 1em; border-radius: 12px; border: 1px solid rgba(0, 0, 0, 0.05); display: flex; flex-direction: column; justify-content: space-between; transition: all 0.3s ease; box-shadow: 0 2px 8px rgba(0,0,0,0.01);" 
         onmouseover="this.style.transform='translateY(-2px)'; this.style.boxShadow='0 8px 16px rgba(0,0,0,0.04)'; this.style.borderColor='rgba(47, 128, 237, 0.2)';" 
         onmouseout="this.style.transform='none'; this.style.boxShadow='0 2px 8px rgba(0,0,0,0.01)'; this.style.borderColor='rgba(0, 0, 0, 0.05)';">
      <div>
        <div style="font-weight: 600; color: #1d1d1f; font-size: 0.95em; display: flex; align-items: center; gap: 0.5em;">
          <i class="fas fa-file-csv" style="color: #27ae60; font-size: 1.2em;"></i> z_network.csv
        </div>
        <div style="font-size: 0.8em; color: #86868b; margin-top: 0.4em; margin-bottom: 0.8em;">
          Adjacency list/network structure connections (70 KB).
        </div>
      </div>
      <a href="{{ '/assets/workshop/z_network.csv' | relative_url }}" download="z_network.csv" class="btn btnId" style="margin: 0; width: 100%; box-sizing: border-box; display: inline-block;">
        <i class="fas fa-download" style="margin-right: 0.4em;"></i> Download
      </a>
    </div>
  </div>
</div>

<h2 style="margin-top: 2.5em; margin-bottom: 0.8em; font-weight: 700; letter-spacing: -0.5px;">
  <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="vertical-align: middle; margin-right: 0.3em; color: #2f80ed; display: inline-block;">
    <path d="M2 3h6a4 4 0 0 1 4 4v14a3 3 0 0 0-3-3H2z"></path>
    <path d="M22 3h-6a4 4 0 0 0-4 4v14a3 3 0 0 1 3-3h7z"></path>
  </svg>
  Background Reading
</h2>

<div class="software-grid" style="margin-top: 1em;">
  <!-- Card for Preprint -->
  <div class="software-card" style="margin-bottom: 1.5em;">
    <h3 class="software-title">R Package iglm: Regression under Interference in Connected Populations</h3>
    <p class="software-subtitle" style="font-size: 0.95em; color: #6e6e73; margin-bottom: 0.8em;">Preprint</p>
    <div class="software-actions">
      <a href="https://arxiv.org/abs/2604.22791" target="_blank" class="btn btnId btnPub--supplement">
        <i class="fas fa-external-link-alt" style="margin-right: 0.5em;"></i> Open arXiv preprint
      </a>
    </div>
  </div>

  <!-- Card for JASA Paper -->
  <div class="software-card" style="margin-bottom: 1.5em;">
    <h3 class="software-title">A Regression Framework for Studying Relationships among Attributes under Network Interference</h3>
    <p class="software-subtitle" style="font-size: 0.95em; color: #6e6e73; margin-bottom: 0.8em;">Journal of the American Statistical Association (JASA)</p>
    <div class="software-actions">
      <a href="https://doi.org/10.1080/01621459.2025.2565851" target="_blank" class="btn btnId btnPub--supplement">
        <i class="fas fa-external-link-alt" style="margin-right: 0.5em;"></i> Open Website
      </a>
    </div>
  </div>
</div>

<div style="margin-top: 3em;">
  <a href="{{ '/#software' | relative_url }}" class="btn btnId" style="background-color: transparent !important; border: 1px solid #1d1d1f !important; color: #1d1d1f !important;">
    <i class="fas fa-arrow-left" style="margin-right: 0.5em;"></i> Back to Software
  </a>
</div>

