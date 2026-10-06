---
layout: page
permalink: /publications/
title: Publications
description: Journal articles and conference proceedings, in reversed chronological order.
nav: true
nav_order: 1
---

<style> header.post-header { display: none !important; }   .navbar-brand.title { display: none !important; }
</style>
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
  /* Modern Card-Based Publications UI */
  .bibliography { list-style: none !important; padding-left: 0 !important; }
  .bibliography > li { background: rgba(255, 255, 255, 0.6); backdrop-filter: blur(10px); border: 1px solid rgba(0, 0, 0, 0.05); border-radius: 16px; padding: 1.5rem; margin-bottom: 1.5rem; box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.05), 0 2px 4px -1px rgba(0, 0, 0, 0.03); transition: transform 0.3s ease, box-shadow 0.3s ease; }
  html[data-theme='dark'] .bibliography > li { background: rgba(30, 41, 59, 0.5); border: 1px solid rgba(255, 255, 255, 0.05); box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.2); }
  .bibliography > li:hover { transform: translateY(-4px); box-shadow: 0 15px 30px -10px rgba(0, 114, 255, 0.15); }
  html[data-theme='dark'] .bibliography > li:hover { box-shadow: 0 15px 30px -10px rgba(137, 247, 254, 0.15); }
  
  .bibliography .abbr { display: none !important; }
  .bibliography .col-sm-8, .bibliography .col-sm-10 { width: 100% !important; max-width: 100% !important; flex: 0 0 100% !important; padding-left: 0 !important; }
  
  /* Clickable Title styling */
  .bibliography .title { font-weight: 700; font-size: 1.25rem; margin-bottom: 0.5rem; }
  .bibliography .title a { color: #111827; text-decoration: none; transition: color 0.2s ease; display: inline-block; }
  html[data-theme='dark'] .bibliography .title a { color: #f3f4f6; }
  .bibliography .title a:hover { color: #0072ff; text-decoration: underline; text-decoration-style: dashed; }
  html[data-theme='dark'] .bibliography .title a:hover { color: #66a6ff; }
  .bibliography .title a::after {
    content: '\f08e';
    font-family: 'Font Awesome 6 Free';
    font-weight: 900;
    font-size: 0.75rem;
    margin-left: 8px;
    opacity: 0;
    transition: opacity 0.2s ease;
    color: #0072ff;
  }
  html[data-theme='dark'] .bibliography .title a::after { color: #66a6ff; }
  .bibliography .title a:hover::after { opacity: 1; }

  .bibliography .author { color: #4b5563; font-size: 0.95rem; margin-bottom: 0.25rem; }
  html[data-theme='dark'] .bibliography .author { color: #9ca3af; }
  .bibliography .periodical { font-style: italic; color: #0072ff; font-size: 0.95rem; margin-bottom: 1rem; }
  html[data-theme='dark'] .bibliography .periodical { color: #66a6ff; }
  
  .bibliography .links a.btn { background: transparent !important; border: 1px solid rgba(0, 114, 255, 0.3) !important; color: #0072ff !important; border-radius: 9999px !important; padding: 0.3rem 1.2rem !important; font-size: 0.85rem !important; font-weight: 600 !important; transition: all 0.2s ease !important; margin-right: 0.5rem; }
  html[data-theme='dark'] .bibliography .links a.btn { border: 1px solid rgba(137, 247, 254, 0.3) !important; color: #89f7fe !important; }
  .bibliography .links a.btn:hover { background: #f3f4f6 !important; border-color: #9ca3af !important; }
  html[data-theme='dark'] .bibliography .links a.btn:hover { background: #1e293b !important; border-color: #94a3b8 !important; }

  /* Rename HTML button to Access Paper */
  .bibliography .links a.btn[href*="scholar.google.com"] {
    font-size: 0 !important;
    vertical-align: middle;
  }
  .bibliography .links a.btn[href*="scholar.google.com"]::after {
    content: 'Access Paper';
    font-size: 0.8rem;
    font-weight: 500;
  }

  /* Metrics Widget */
  .metrics-container {
    display: flex;
    gap: 1.5rem;
    margin-bottom: 3rem;
    flex-wrap: wrap;
  }
  .metric-card {
    flex: 1;
    min-width: 150px;
    background: linear-gradient(135deg, rgba(255,255,255,0.8) 0%, rgba(255,255,255,0.4) 100%);
    backdrop-filter: blur(10px);
    border: 1px solid rgba(255,255,255,0.8);
    border-radius: 20px;
    padding: 1.5rem;
    text-align: center;
    box-shadow: 0 10px 20px -5px rgba(0, 0, 0, 0.05);
    transition: transform 0.3s ease;
  }
  html[data-theme='dark'] .metric-card {
    background: linear-gradient(135deg, rgba(30,41,59,0.8) 0%, rgba(30,41,59,0.4) 100%);
    border: 1px solid rgba(255,255,255,0.05);
    box-shadow: 0 10px 20px -5px rgba(0, 0, 0, 0.3);
  }
  .metric-card:hover { transform: translateY(-3px); }
  
  .metric-value {
    font-size: 2.5rem;
    font-weight: 800;
    background: linear-gradient(135deg, #0072ff 0%, #00c6ff 100%);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    line-height: 1;
    margin-bottom: 0.5rem;
  }
  html[data-theme='dark'] .metric-value {
    background: linear-gradient(135deg, #89f7fe 0%, #66a6ff 100%);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
  }
  .metric-label {
    font-weight: 600;
    color: #4b5563;
    font-size: 1rem;
    text-transform: uppercase;
    letter-spacing: 0.05em;
  }
  html[data-theme='dark'] .metric-label { color: #9ca3af; }
  .metric-sub {
    font-size: 0.8rem;
    color: #6b7280;
    margin-top: 0.25rem;
  }
  html[data-theme='dark'] .metric-sub { color: #6b7280; }
  .navbar-brand.title { display: none !important; }
</style>

<!-- METRICS WIDGET -->
<div class="metrics-container" data-aos="fade-down" data-aos-duration="1000">
  <a href="https://scholar.google.com/citations?user=jC9VkWsAAAAJ" target="_blank" style="text-decoration:none;" class="metric-card">
    <div class="metric-value">328</div>
    <div class="metric-label">Citations</div>
    <div class="metric-sub">322 since 2021</div>
  </a>
  <a href="https://scholar.google.com/citations?user=jC9VkWsAAAAJ" target="_blank" style="text-decoration:none;" class="metric-card">
    <div class="metric-value">9</div>
    <div class="metric-label">h-index</div>
    <div class="metric-sub">9 since 2021</div>
  </a>
  <a href="https://scholar.google.com/citations?user=jC9VkWsAAAAJ" target="_blank" style="text-decoration:none;" class="metric-card">
    <div class="metric-value">9</div>
    <div class="metric-label">i10-index</div>
    <div class="metric-sub">9 since 2021</div>
  </a>
</div>

<!-- BIB SEARCH AND LIST -->
{% include bib_search.liquid %}

<div class="publications" data-aos="fade-up" data-aos-duration="1000">
  {% bibliography %}
</div>

<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
  document.addEventListener("DOMContentLoaded", function() {
    setTimeout(function() { AOS.init({ once: true, offset: 20 }); }, 100);

    // Transform all publication titles into Google Scholar search links
    const titles = document.querySelectorAll('.bibliography .title');
    titles.forEach(titleDiv => {
      // Get the pure text of the title, ignoring HTML tags
      const titleText = titleDiv.textContent.trim();
      if(titleText) {
        // Encode it for Google Scholar search
        const query = encodeURIComponent('"' + titleText + '"');
        const scholarUrl = 'https://scholar.google.com/scholar?q=' + query;
        
        // Wrap the contents in a link
        titleDiv.innerHTML = '<a href="' + scholarUrl + '" target="_blank" rel="noopener noreferrer">' + titleDiv.innerHTML + '</a>';
      }
    });
  });
</script>
