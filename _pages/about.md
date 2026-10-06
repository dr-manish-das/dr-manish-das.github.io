---
layout: page
title: About
permalink: /
description: 
nav: true
nav_order: 1
---

<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
  /* ----------------------------------------------------
     ELEGANT & PROFESSIONAL HOMEPAGE
     ---------------------------------------------------- */
  @keyframes float {
    0% { transform: translateY(0px); }
    50% { transform: translateY(-12px); }
    100% { transform: translateY(0px); }
  }
  @keyframes pulseGlow {
    0% { box-shadow: 0 0 0 0 rgba(17, 24, 39, 0.1); }
    70% { box-shadow: 0 0 0 20px rgba(17, 24, 39, 0); }
    100% { box-shadow: 0 0 0 0 rgba(17, 24, 39, 0); }
  }
  html[data-theme='dark'] .profile-pic {
    animation: float 6s ease-in-out infinite, pulseGlow 3s infinite;
  }
  @keyframes pulseGlowDark {
    0% { box-shadow: 0 0 0 0 rgba(248, 250, 252, 0.1); }
    70% { box-shadow: 0 0 0 20px rgba(248, 250, 252, 0); }
    100% { box-shadow: 0 0 0 0 rgba(248, 250, 252, 0); }
  }
  .profile-pic {
    animation: float 6s ease-in-out infinite, pulseGlow 3s infinite;
  }
  
  /* Shine Effect on Cards */
  .highlight-card {
    position: relative;
    overflow: hidden;
  }
  .highlight-card::before {
    content: '';
    position: absolute;
    top: 0; left: -100%;
    width: 50%; height: 100%;
    background: linear-gradient(to right, rgba(255,255,255,0) 0%, rgba(255,255,255,0.3) 50%, rgba(255,255,255,0) 100%);
    transform: skewX(-25deg);
    transition: all 0.75s ease;
    z-index: 1;
  }
  .highlight-card:hover::before {
    left: 125%;
  }
  html[data-theme='dark'] .highlight-card::before {
    background: linear-gradient(to right, rgba(255,255,255,0) 0%, rgba(255,255,255,0.1) 50%, rgba(255,255,255,0) 100%);
  }
  
  /* Hero Section */
  .hero-section {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    text-align: center;
    padding: 4rem 1rem 5rem 1rem;
    position: relative;
    border-radius: 12px;
    background: transparent;
    margin-bottom: 3rem;
  }

  .profile-pic {
    width: 160px;
    height: 160px;
    border-radius: 50%;
    object-fit: cover;
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.08);
    margin-bottom: 2rem;
    border: 1px solid rgba(0,0,0,0.05);
    transition: transform 0.4s ease;
  }
  html[data-theme='dark'] .profile-pic {
    border: 1px solid rgba(255,255,255,0.05);
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
  }
  .profile-pic:hover {
    transform: scale(1.03);
  }

  .hero-greeting {
    font-size: 3.25rem;
    font-weight: 700;
    letter-spacing: -0.02em;
    color: #111827;
    margin-bottom: 0.75rem;
    line-height: 1.1;
  }
  html[data-theme='dark'] .hero-greeting { color: #f9fafb; }

  .hero-tagline {
    font-size: 1.2rem;
    font-weight: 400;
    color: #4b5563;
    max-width: 650px;
    margin-bottom: 2.5rem;
    line-height: 1.7;
  }
  html[data-theme='dark'] .hero-tagline { color: #d1d5db; }

  .hero-actions {
    display: flex;
    gap: 1.5rem;
    flex-wrap: wrap;
    justify-content: center;
  }
  
  .btn-modern {
    padding: 0.75rem 1.75rem;
    border-radius: 6px;
    font-weight: 500;
    font-size: 0.95rem;
    text-decoration: none !important;
    transition: all 0.2s ease;
    display: flex;
    align-items: center;
    gap: 0.5rem;
    letter-spacing: 0.03em;
  }
  .btn-primary {
    background: #111827;
    color: white !important;
    border: 1px solid #111827;
  }
  html[data-theme='dark'] .btn-primary {
    background: #f8fafc;
    color: #0f172a !important;
    border: 1px solid #f8fafc;
  }
  .btn-primary:hover { background: #374151; border-color: #374151; }
  html[data-theme='dark'] .btn-primary:hover { background: #cbd5e1; border-color: #cbd5e1; }
  
  .btn-secondary {
    background: transparent;
    color: #111827 !important;
    border: 1px solid #d1d5db;
  }
  html[data-theme='dark'] .btn-secondary {
    color: #f8fafc !important;
    border: 1px solid #475569;
  }
  .btn-secondary:hover { background: #f3f4f6; border-color: #9ca3af; }
  html[data-theme='dark'] .btn-secondary:hover { background: #1e293b; border-color: #94a3b8; }

  /* Elegant Section Titles */
  .section-title {
    font-size: 1.25rem;
    font-weight: 600;
    margin-bottom: 2.5rem;
    color: #111827;
    letter-spacing: 0.1em;
    text-transform: uppercase;
    text-align: center;
    position: relative;
    padding-bottom: 1rem;
  }
  html[data-theme='dark'] .section-title { color: #f9fafb; }
  
  /* The beautiful minimal horizontal line */
  .section-title::after {
    content: '';
    position: absolute;
    bottom: 0; 
    left: 50%;
    transform: translateX(-50%);
    width: 40px; 
    height: 2px;
    background: #9ca3af;
  }
  html[data-theme='dark'] .section-title::after { background: #4b5563; }

  /* Research Highlights Grid */
  .highlights-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 2rem;
    margin-bottom: 5rem;
  }
  .highlight-card { background: rgba(255, 255, 255, 0.7); backdrop-filter: blur(12px); border: 1px solid rgba(0, 0, 0, 0.05); border-radius: 20px; padding: 2.5rem 2rem; transition: all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275); display: flex; flex-direction: column; align-items: center; text-align: center; box-shadow: 0 10px 30px -10px rgba(0,0,0,0.05); }
  html[data-theme='dark'] .highlight-card { background: rgba(30, 41, 59, 0.6); backdrop-filter: blur(12px); border: 1px solid rgba(255, 255, 255, 0.05); box-shadow: 0 10px 30px -10px rgba(0,0,0,0.3); }
  .highlight-card:hover { transform: translateY(-8px); box-shadow: 0 20px 40px -15px rgba(0, 0, 0, 0.1); }
  html[data-theme='dark'] .highlight-card:hover { box-shadow: 0 20px 40px -15px rgba(0, 0, 0, 0.5); }
  
  .highlight-icon {
    font-size: 2.5rem;
    margin-bottom: 1.5rem;
    color: #4b5563;
  }
  html[data-theme='dark'] .highlight-icon { color: #9ca3af; }
  
  .highlight-title {
    font-weight: 600;
    font-size: 1.15rem;
    color: #111827;
    margin-bottom: 1rem;
  }
  html[data-theme='dark'] .highlight-title { color: #f9fafb; }
  
  .highlight-desc {
    color: #6b7280;
    font-size: 0.95rem;
    line-height: 1.6;
    font-weight: 400;
  }
  html[data-theme='dark'] .highlight-desc { color: #cbd5e1; }

  /* Modern Card-Based Publications UI (Minimal variant) */
  .bibliography { list-style: none !important; padding-left: 0 !important; }
  .bibliography > li { background: rgba(255, 255, 255, 0.7); backdrop-filter: blur(12px); border: 1px solid rgba(0, 0, 0, 0.05); border-radius: 20px; padding: 1.5rem; margin-bottom: 1.5rem; box-shadow: 0 10px 30px -10px rgba(0, 0, 0, 0.05); transition: all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275); }
  html[data-theme='dark'] .bibliography > li { background: rgba(30, 41, 59, 0.6); backdrop-filter: blur(12px); border: 1px solid rgba(255, 255, 255, 0.05); box-shadow: 0 10px 30px -10px rgba(0, 0, 0, 0.3); }
  .bibliography > li:hover { transform: translateY(-8px); box-shadow: 0 20px 40px -15px rgba(0, 0, 0, 0.1); }
  html[data-theme='dark'] .bibliography > li:hover { box-shadow: 0 20px 40px -15px rgba(0, 0, 0, 0.5); }
  
  .bibliography .abbr { display: none !important; }
  .bibliography .col-sm-8, .bibliography .col-sm-10 { width: 100% !important; max-width: 100% !important; flex: 0 0 100% !important; padding-left: 0 !important; }
  
  .bibliography .title { font-weight: 600; font-size: 1.1rem; color: #111827; margin-bottom: 0.5rem; }
  html[data-theme='dark'] .bibliography .title { color: #f3f4f6; }
  .bibliography .author { color: #4b5563; font-size: 0.95rem; margin-bottom: 0.25rem; font-weight: 400; }
  html[data-theme='dark'] .bibliography .author { color: #cbd5e1; }
  .bibliography .periodical { font-style: normal; color: #6b7280; font-size: 0.9rem; margin-bottom: 1rem; font-weight: 500; }
  html[data-theme='dark'] .bibliography .periodical { color: #9ca3af; }
  
  .bibliography .links a.btn { background: transparent !important; border: 1px solid #d1d5db !important; color: #374151 !important; border-radius: 4px !important; padding: 0.25rem 0.75rem !important; font-size: 0.8rem !important; font-weight: 500 !important; transition: all 0.2s ease !important; margin-right: 0.5rem; }
  html[data-theme='dark'] .bibliography .links a.btn { border: 1px solid #475569 !important; color: #cbd5e1 !important; }
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
  
  header.post-header { display: none !important; }
  .selected-works-subtitle { text-align: center; color: #6b7280; margin-bottom: 2.5rem; max-width: 600px; margin-left: auto; margin-right: auto; }
  html[data-theme='dark'] .selected-works-subtitle { color: #9ca3af; }

  @keyframes float {
    0% { transform: translateY(0px); }
    50% { transform: translateY(-12px); }
    100% { transform: translateY(0px); }
  }
  @keyframes pulseGlow {
    0%, 100% { box-shadow: 0 0 20px rgba(0, 114, 255, 0.2); }
    50% { box-shadow: 0 0 40px rgba(0, 114, 255, 0.4); }
  }
  @keyframes pulseGlowDark {
    0%, 100% { box-shadow: 0 0 20px rgba(137, 247, 254, 0.15); }
    50% { box-shadow: 0 0 40px rgba(137, 247, 254, 0.3); }
  }
</style>

<!-- HERO SECTION -->
<div class="hero-section" data-aos="fade-in" data-aos-duration="1200">
  <img src="{{ '/assets/img/prof_pic.jpg' | relative_url }}" alt="Manish Das" class="profile-pic" data-aos="zoom-in" data-aos-delay="200">
  
  <h1 class="hero-greeting" data-aos="fade-up" data-aos-delay="300">Hi, I am Manish 👋</h1>
  
    <p class="hero-tagline" data-aos="fade-up" data-aos-delay="400">
    Doctoral Researcher at <strong>Jagiellonian University</strong> in Kraków.
    <br>
    Working on <strong>PLI</strong> and <strong>Scatter Correction</strong> in <a href="https://centhe.id.uj.edu.pl/en_GB/equipment/modular-j-pet" target="_blank" style="color: inherit; text-decoration: underline; text-decoration-color: #3b82f6;">modular J-PET</a>.
  </p>

  <div class="hero-actions" data-aos="fade-up" data-aos-delay="500">
    <a href="/publications/" class="btn-modern btn-primary">Publications</a>
    <a href="/contact/" class="btn-modern btn-secondary">Get in Touch</a>
  </div>
</div>

<!-- HIGHLIGHTS GRID -->
<h2 class="section-title" data-aos="fade-up">Research Focus</h2>
<div class="highlights-grid">
  
  <div class="highlight-card" data-aos="fade-up" data-aos-delay="100">
    <i class="fas fa-brain highlight-icon"></i>
    <div class="highlight-title">PET Imaging</div>
    <div class="highlight-desc">Studying the architecture and physics of Positron Emission Tomography to develop modular, affordable, and total-body imaging solutions.</div>
  </div>

  <div class="highlight-card" data-aos="fade-up" data-aos-delay="200">
    <i class="fas fa-sliders-h highlight-icon"></i>
    <div class="highlight-title">Corrections in PET Imaging</div>
    <div class="highlight-desc">Working on advanced calibration techniques and Monte Carlo-based scatter corrections to ensure high-fidelity image data and quantitative accuracy.</div>
  </div>

  <div class="highlight-card" data-aos="fade-up" data-aos-delay="300">
    <i class="fas fa-layer-group highlight-icon"></i>
    <div class="highlight-title">Reconstruction</div>
    <div class="highlight-desc">Implementing and optimizing advanced image reconstruction algorithms to transform raw coincidence data into precise, high-resolution diagnostic images.</div>
  </div>

  <div class="highlight-card" data-aos="fade-up" data-aos-delay="400">
    <i class="fas fa-stopwatch highlight-icon"></i>
    <div class="highlight-title">Positronium Lifetime Imaging</div>
    <div class="highlight-desc">Working on an in-human Positronium Lifetime Imaging (PLI) framework to study tissue oxygenation and structure at the submolecular level.</div>
  </div>

</div>

<!-- SELECTED PUBLICATIONS -->
<h2 class="section-title" data-aos="fade-up">Selected Works</h2>
<p class="selected-works-subtitle" data-aos="fade-in" data-aos-delay="100">
  Highlighted papers featured in <em>Scientific Reports</em>, <em>Science Advances</em>, and more.
</p>

<div class="publications" data-aos="fade-up" data-aos-delay="200" style="max-width: 800px; margin: 0 auto;">
  {% bibliography --query @*[selected=true]* %}
</div>

<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
  document.addEventListener("DOMContentLoaded", function() {
    setTimeout(function() { AOS.init({ once: true, offset: 20 }); }, 100);
  });
</script>
