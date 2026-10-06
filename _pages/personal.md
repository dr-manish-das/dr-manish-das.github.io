---
layout: page
title: Personal
permalink: /personal/
nav: true
nav_order: 5
---

<style> header.post-header { display: none !important; }   .navbar-brand.title { display: none !important; } </style>
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
  /* Fun Typography and Intro */
  .personal-header {
    text-align: center;
    padding: 2rem 1rem 4rem 1rem;
    position: relative;
    max-width: 800px;
    margin: 0 auto;
  }
  .personal-title {
    font-size: 3.5rem;
    font-weight: 900;
    color: #111827;
    margin-bottom: 1.5rem;
    letter-spacing: -0.03em;
    background: linear-gradient(135deg, #111827 0%, #374151 100%);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
  }
  html[data-theme='dark'] .personal-title {
    background: linear-gradient(135deg, #f9fafb 0%, #9ca3af 100%);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
  }
  
  .personal-desc {
    font-size: 1.2rem;
    color: #4b5563;
    line-height: 1.8;
    margin: 0 auto;
    font-weight: 400;
  }
  html[data-theme='dark'] .personal-desc { color: #d1d5db; }
  
  .invite-highlight {
    display: inline-block;
    margin-top: 0.5rem;
    padding: 0.8rem 1.8rem;
    background: rgba(59, 130, 246, 0.05);
    color: #2563eb;
    border-radius: 12px;
    font-weight: 600;
    font-size: 1.2rem;
    border: 1px solid rgba(59, 130, 246, 0.15);
    transition: transform 0.3s ease;
  }
  html[data-theme='dark'] .invite-highlight {
    background: rgba(96, 165, 250, 0.05);
    color: #93c5fd;
    border-color: rgba(96, 165, 250, 0.15);
  }
  .invite-highlight:hover { transform: scale(1.02); }

  /* Infinite Marquee Album */
  .marquee-wrapper {
    position: relative;
    width: 100vw;
    margin-left: calc(-50vw + 50%);
    overflow: hidden;
    padding: 2rem 0;
    display: flex;
    flex-direction: column;
    gap: 1.5rem;
  }

  .marquee-wrapper::before, .marquee-wrapper::after {
    content: ""; position: absolute; top: 0; width: 15vw; height: 100%; z-index: 2; pointer-events: none;
  }
  .marquee-wrapper::before { left: 0; background: linear-gradient(to right, #ffffff 0%, transparent 100%); }
  .marquee-wrapper::after { right: 0; background: linear-gradient(to left, #ffffff 0%, transparent 100%); }
  html[data-theme='dark'] .marquee-wrapper::before { background: linear-gradient(to right, #111827 0%, transparent 100%); }
  html[data-theme='dark'] .marquee-wrapper::after { background: linear-gradient(to left, #111827 0%, transparent 100%); }

  .marquee-track {
    display: flex;
    gap: 1.5rem;
    width: max-content;
  }
  
  .marquee-left { animation: scrollLeft 35s linear infinite; }
  .marquee-right { animation: scrollRight 40s linear infinite; }
  .marquee-track:hover { animation-play-state: paused; }

  @keyframes scrollLeft { 0% { transform: translateX(0); } 100% { transform: translateX(calc(-50% - 0.75rem)); } }
  @keyframes scrollRight { 0% { transform: translateX(calc(-50% - 0.75rem)); } 100% { transform: translateX(0); } }

  .photo-card {
    height: 300px;
    border-radius: 20px;
    overflow: hidden;
    box-shadow: 0 10px 25px -5px rgba(0,0,0,0.1);
    transition: transform 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
    cursor: zoom-in;
    flex-shrink: 0;
    position: relative;
  }
  html[data-theme='dark'] .photo-card { box-shadow: 0 10px 25px -5px rgba(0,0,0,0.5); }
  
  .photo-card:hover {
    transform: scale(1.04);
    box-shadow: 0 20px 30px -10px rgba(0,0,0,0.2);
    z-index: 10;
  }
  html[data-theme='dark'] .photo-card:hover { box-shadow: 0 20px 30px -10px rgba(0,0,0,0.7); }
  
  .photo-card img {
    height: 100%;
    width: auto;
    object-fit: cover;
    display: block;
    border-radius: 20px;
  }

  /* Custom Lightbox Overlay */
  #lightbox {
    position: fixed;
    z-index: 99999;
    top: 0; left: 0;
    width: 100vw; height: 100vh;
    background: rgba(0, 0, 0, 0.85);
    backdrop-filter: blur(8px);
    display: flex;
    align-items: center;
    justify-content: center;
    opacity: 0;
    pointer-events: none;
    transition: opacity 0.3s ease;
  }
  #lightbox.active {
    opacity: 1;
    pointer-events: auto;
    cursor: zoom-out;
  }
  #lightbox img {
    max-width: 90vw;
    max-height: 90vh;
    border-radius: 12px;
    box-shadow: 0 20px 50px rgba(0,0,0,0.5);
    transform: scale(0.95);
    transition: transform 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
  }
  #lightbox.active img { transform: scale(1); }

  /* Fun CTA Button */
  .fun-cta {
    display: inline-flex;
    align-items: center;
    background: #111827;
    color: #fff !important;
    font-size: 1.15rem;
    font-weight: 700;
    padding: 1rem 2.5rem;
    border-radius: 9999px;
    margin-top: 2.5rem;
    text-decoration: none;
    transition: all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
    box-shadow: 0 10px 25px -5px rgba(17,24,39,0.4);
    position: relative;
    z-index: 100;
  }
  html[data-theme='dark'] .fun-cta {
    background: #f8fafc;
    color: #0f172a !important;
    box-shadow: 0 10px 25px -5px rgba(248,250,252,0.2);
  }
  .fun-cta:hover {
    transform: translateY(-5px) scale(1.02);
    box-shadow: 0 20px 35px -10px rgba(17,24,39,0.5);
  }
  html[data-theme='dark'] .fun-cta:hover { box-shadow: 0 20px 35px -10px rgba(248,250,252,0.3); }
  .fun-cta i { margin-left: 0.75rem; font-size: 1.3rem; }
</style>

<div class="personal-header" data-aos="fade-down" data-aos-duration="1000">
  <h1 class="personal-title">Beyond Work</h1>
  
  <p class="personal-desc">
    I am a huge believer in maintaining a balance between the lab and the world outside. 
    I love travelling ✈️, exploring new places, and making great friends along the way.
    <br><br>
    <span class="invite-highlight">
      Invite me for a talk, and let's go grab some beers afterwards! 🍻
    </span>
  </p>

  <a href="mailto:manish.das@doctoral.uj.edu.pl" class="fun-cta" data-aos="zoom-in" data-aos-delay="200" id="beer-btn">
    Let's Connect <i class="fas fa-glass-cheers"></i>
  </a>
</div>

<div class="marquee-wrapper" data-aos="fade-in" data-aos-delay="400">
  
  <!-- TRACK 1 -->
  <div class="marquee-track marquee-left">
    {% for i in (1..8) %}
    <div class="photo-card"><img src="{{ '/assets/img/Personal/' | relative_url }}{{i}}.jpg"></div>
    {% endfor %}
    {% for i in (1..8) %}
    <div class="photo-card"><img src="{{ '/assets/img/Personal/' | relative_url }}{{i}}.jpg"></div>
    {% endfor %}
  </div>

  <!-- TRACK 2 -->
  <div class="marquee-track marquee-right">
    {% for i in (9..15) %}
    <div class="photo-card"><img src="{{ '/assets/img/Personal/' | relative_url }}{{i}}.jpg"></div>
    {% endfor %}
    {% for i in (9..15) %}
    <div class="photo-card"><img src="{{ '/assets/img/Personal/' | relative_url }}{{i}}.jpg"></div>
    {% endfor %}
  </div>

</div>

<!-- Lightbox Modal -->
<div id="lightbox"></div>

<script src="https://unpkg.com/aos@2.3.1/dist/aos.js">  });
</script>
<script>
  document.addEventListener("DOMContentLoaded", function() {
    setTimeout(function() { AOS.init({ once: true, offset: 20 }); }, 100);
    
    // Lightbox Logic
    const lightbox = document.getElementById('lightbox');
    const images = document.querySelectorAll('.photo-card img');
    
    images.forEach(image => {
      image.addEventListener('click', e => {
        lightbox.classList.add('active');
        const img = document.createElement('img');
        img.src = image.src;
        while(lightbox.firstChild) { lightbox.removeChild(lightbox.firstChild); }
        lightbox.appendChild(img);
      });
    });
    
    lightbox.addEventListener('click', e => {
      if(e.target !== e.currentTarget) return; // Only close if clicking background
      lightbox.classList.remove('active');
    });

    
  });
</script>