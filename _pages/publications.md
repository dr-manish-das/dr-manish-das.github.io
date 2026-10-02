---
layout: page
permalink: /publications/
title: publications
description: Journal articles and conference proceedings, in reversed chronological order.
nav: true
nav_order: 1
---

<!-- _pages/publications.md -->

<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<style>
  /* Beautiful Modern Publication Badge */
  .abbr .badge, abbr.badge {
    background: linear-gradient(135deg, #0072ff 0%, #00c6ff 100%) !important;
    color: white !important;
    font-weight: 600 !important;
    padding: 0.4em 0.8em !important;
    border-radius: 9999px !important;
    box-shadow: 0 4px 6px -1px rgba(0, 114, 255, 0.2) !important;
    letter-spacing: 0.05em;
    text-transform: uppercase;
    border: none !important;
    font-size: 0.75rem !important;
    transition: transform 0.2s ease;
  }
  .abbr .badge:hover, abbr.badge:hover {
    transform: translateY(-2px);
  }
  .dark .abbr .badge, .dark abbr.badge {
    background: linear-gradient(135deg, #89f7fe 0%, #66a6ff 100%) !important;
    color: #111827 !important;
    box-shadow: 0 4px 6px -1px rgba(137, 247, 254, 0.2) !important;
  }
</style>

<!-- Bibsearch Feature -->

{% include bib_search.liquid %}

<div class="publications" data-aos="fade-up" data-aos-duration="1000">

{% bibliography %}

</div>

<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
  document.addEventListener("DOMContentLoaded", function() {
    setTimeout(function() {
      AOS.init({ once: true, offset: 20 });
    }, 100);
  });
</script>