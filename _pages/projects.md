---
layout: page
title: Projects
permalink: /projects/
nav: true
nav_order: 4
---

<style> header.post-header { display: none !important; }   .navbar-brand.title { display: none !important; } </style>
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

<style>
  .projects-header { 
    margin-bottom: 5rem; 
    padding-top: 2rem; 
  }
  .phd-title { 
    font-size: 3.5rem; 
    font-weight: 800; 
    color: #111827; 
    letter-spacing: -0.02em; 
    margin-bottom: 1rem; 
  }
  html[data-theme='dark'] .phd-title { color: #f8fafc; }
  
  .projects-intro { 
    font-size: 1.25rem; 
    color: #6b7280; 
    line-height: 1.7; 
    max-width: 700px; 
    font-weight: 300; 
  }
  html[data-theme='dark'] .projects-intro { color: #9ca3af; }

  /* Editorial Offset Layout */
  .thesis-chapter {
    display: flex;
    flex-direction: column;
    padding: 4rem 0;
    border-top: 1px solid rgba(0,0,0,0.1);
  }
  html[data-theme='dark'] .thesis-chapter { border-top: 1px solid rgba(255,255,255,0.1); }
  
  .thesis-chapter:last-child {
    border-bottom: 1px solid rgba(0,0,0,0.1);
  }
  html[data-theme='dark'] .thesis-chapter:last-child { border-bottom: 1px solid rgba(255,255,255,0.1); }

  .chapter-meta {
    margin-bottom: 2rem;
  }
  
  .chapter-number {
    font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
    font-size: 1rem;
    color: #3b82f6;
    font-weight: 700;
    letter-spacing: 0.15em;
    text-transform: uppercase;
    margin-bottom: 1rem;
    display: block;
  }
  html[data-theme='dark'] .chapter-number { color: #60a5fa; }
  
  .chapter-title {
    font-size: 2rem;
    font-weight: 700;
    color: #111827;
    line-height: 1.25;
    letter-spacing: -0.01em;
  }
  html[data-theme='dark'] .chapter-title { color: #f1f5f9; }

  .chapter-content-wrapper {
    display: flex;
    flex-direction: column;
  }

  .chapter-desc {
    font-size: 1.15rem;
    color: #4b5563;
    line-height: 1.8;
    font-weight: 400;
    margin-bottom: 2.5rem;
  }
  html[data-theme='dark'] .chapter-desc { color: #cbd5e1; }

  .panel-tags {
    display: flex; flex-wrap: wrap; gap: 0.75rem;
  }
  .tag {
    background: transparent; 
    color: #6b7280; 
    padding: 0.4rem 1rem; 
    border-radius: 9999px; 
    font-size: 0.8rem; 
    font-weight: 500; 
    border: 1px solid #d1d5db;
    transition: all 0.3s ease;
  }
  html[data-theme='dark'] .tag { color: #94a3b8; border-color: #475569; }
  .tag:hover { background: #f3f4f6; color: #111827; }
  html[data-theme='dark'] .tag:hover { background: #334155; color: #f8fafc; }

  @media (min-width: 992px) {
    .thesis-chapter {
      flex-direction: row;
      gap: 5rem;
      align-items: flex-start;
    }
    .chapter-meta {
      flex: 0 0 350px;
      margin-bottom: 0;
      position: sticky;
      top: 100px;
    }
    .chapter-content-wrapper {
      flex: 1;
      padding-top: 2.5rem; /* Aligns paragraph nicely with the title */
    }
  }
</style>

<div class="projects-header" data-aos="fade-in" data-aos-duration="1000">
  <h1 class="phd-title">My PhD Work</h1>
  <p class="projects-intro">My PhD work is divided into two parts:</p>
</div>

<div class="thesis-flow">
  
  <!-- CHAPTER 1 -->
  <div class="thesis-chapter" data-aos="fade-up" data-aos-duration="1000">
    <div class="chapter-meta">
      <span class="chapter-number">Part 01</span>
      <h3 class="chapter-title">Development of Corrections for J-PET Scanner</h3>
    </div>
    <div class="chapter-content-wrapper">
      <p class="chapter-desc">
        Working on critical correction methods for the Modular J-PET Scanner to ensure high-fidelity image data and quantitative accuracy. This focused on implementing CT-based attenuation correction, random correction via delayed time windows, and Monte-Carlo based scatter correction, ultimately validating the scanner's performance against commercial PET/CT systems using clinical patient data.
      </p>
      <div class="panel-tags">
        <span class="tag">Calibration</span>
        <span class="tag">Monte Carlo</span>
        <span class="tag">Scatter Correction</span>
        <span class="tag">J-PET</span>
      </div>
    </div>
  </div>

  <!-- CHAPTER 2 -->
  <div class="thesis-chapter" data-aos="fade-up" data-aos-duration="1000">
    <div class="chapter-meta">
      <span class="chapter-number">Part 02</span>
      <h3 class="chapter-title">Positronium Lifetime Imaging (PLI)</h3>
    </div>
    <div class="chapter-content-wrapper">
      <p class="chapter-desc">
        Conducting the experimental demonstration of Positronium Lifetime Imaging utilizing novel long-lived isotopes (⁴⁴Sc, ⁵²Mn, ⁵⁸Co). This established event selection criteria, evaluated lifetime extraction models, and culminated in a feasibility study applying PLI to human patients to extract organ-level positron lifetimes, expanding the horizon of delayed imaging in medical diagnostics.
      </p>
      <div class="panel-tags">
        <span class="tag">In-human PLI</span>
        <span class="tag">Isotope Physics</span>
        <span class="tag">Metabolic Imaging</span>
        <span class="tag">Clinical Trials</span>
      </div>
    </div>
  </div>

</div>

<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
  document.addEventListener("DOMContentLoaded", function() {
    setTimeout(function() { AOS.init({ once: true, offset: 20 }); }, 100);
  });
</script>