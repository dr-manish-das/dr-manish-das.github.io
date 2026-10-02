---
layout: cv
permalink: /cv/
title: CV
nav: true
nav_order: 2
cv_pdf: /assets/pdf/Linkedin_profile.pdf # download button in the page header
cv_format: rendercv # options: rendercv, jsonresume
description: Curriculum vitae — education, experience, selected publications and conference talks.
toc:
  sidebar: left
---


<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<style>
  /* Beautiful Modern CV Styling */
  .cv .card {
    border: none !important;
    border-radius: 16px !important;
    box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.05), 0 4px 6px -2px rgba(0, 0, 0, 0.025) !important;
    margin-bottom: 2rem !important;
    background-color: rgba(255, 255, 255, 0.8) !important;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    overflow: hidden;
  }
  .dark .cv .card {
    background-color: rgba(31, 41, 55, 0.7) !important;
    box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.3) !important;
  }
  .cv .card:hover {
    transform: translateY(-4px);
    box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04) !important;
  }
  .cv .card-title {
    font-weight: 700;
    font-size: 1.5rem !important;
    color: #0072ff !important;
    padding-bottom: 0.5rem;
    margin-bottom: 1.5rem;
    background: transparent !important;
    border-bottom: 2px solid rgba(0, 114, 255, 0.1) !important;
  }
  .dark .cv .card-title {
    color: #89f7fe !important;
    border-bottom: 2px solid rgba(137, 247, 254, 0.1) !important;
  }
  .cv .table {
    border: none !important;
  }
  .cv .table td {
    border-top: 1px solid rgba(0,0,0,0.05) !important;
    padding: 1.25rem 0.5rem !important;
  }
  .dark .cv .table td {
    border-top: 1px solid rgba(255,255,255,0.05) !important;
  }
  /* First row in table should have no top border */
  .cv .table tr:first-child td {
    border-top: none !important;
  }
  .cv h3.title {
    font-weight: 600 !important;
    margin-bottom: 0.25rem !important;
  }
  .cv table td:first-child {
    font-weight: 500;
    color: #6b7280;
    min-width: 120px;
  }
  .dark .cv table td:first-child {
    color: #9ca3af;
  }
</style>

<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
  document.addEventListener("DOMContentLoaded", function() {
    setTimeout(function() {
      AOS.init({ once: true, offset: 20 });
      // Apply fade-up to each card dynamically
      document.querySelectorAll('.cv .card').forEach((el, index) => {
        el.setAttribute('data-aos', 'fade-up');
        el.setAttribute('data-aos-delay', (index * 100).toString());
      });
    }, 100);
  });
</script>