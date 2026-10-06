---
layout: page
permalink: /cv/
title: CV
nav: true
nav_order: 3
cv_pdf: /assets/pdf/Linkedin_profile.pdf
description: Download a comprehensive overview of my academic and professional background.
---

<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
  /* ----------------------------------------------------
     MINIMALIST CV DOWNLOAD PAGE
     ---------------------------------------------------- */
  
  .cv-download-container {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    padding: 6rem 2rem;
    text-align: center;
    background: linear-gradient(135deg, rgba(255,255,255,0.8) 0%, rgba(255,255,255,0.4) 100%);
    backdrop-filter: blur(10px);
    border: 1px solid rgba(0, 0, 0, 0.05);
    border-radius: 24px;
    box-shadow: 0 20px 40px -10px rgba(0, 0, 0, 0.05);
    margin: 2rem auto 4rem auto;
    max-width: 700px;
  }
  html[data-theme='dark'] .cv-download-container {
    background: linear-gradient(135deg, rgba(30,41,59,0.8) 0%, rgba(30,41,59,0.4) 100%);
    border: 1px solid rgba(255, 255, 255, 0.05);
    box-shadow: 0 20px 40px -10px rgba(0, 0, 0, 0.3);
  }

  .cv-icon {
    font-size: 4rem;
    margin-bottom: 1.5rem;
    background: linear-gradient(135deg, #0072ff 0%, #00c6ff 100%);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
  }
  html[data-theme='dark'] .cv-icon {
    background: linear-gradient(135deg, #89f7fe 0%, #66a6ff 100%);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
  }

  .cv-title {
    font-weight: 800;
    font-size: 2rem;
    color: #111827;
    margin-bottom: 1rem;
    letter-spacing: -0.025em;
  }
  html[data-theme='dark'] .cv-title { color: #f9fafb; }

  .cv-subtitle {
    color: #4b5563;
    font-size: 1.1rem;
    line-height: 1.6;
    margin-bottom: 2.5rem;
    max-width: 500px;
  }
  html[data-theme='dark'] .cv-subtitle { color: #9ca3af; }
  
  .cv-pdf-btn-massive {
    display: inline-flex;
    align-items: center;
    background: #111827;
    color: #ffffff !important;
    font-weight: 600;
    font-size: 1.1rem;
    padding: 1rem 2.5rem;
    border-radius: 9999px;
    transition: all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
    text-decoration: none;
    box-shadow: 0 10px 20px -5px rgba(17, 24, 39, 0.4);
  }
  html[data-theme='dark'] .cv-pdf-btn-massive {
    background: #f8fafc;
    color: #0f172a !important;
    box-shadow: 0 10px 20px -5px rgba(248, 250, 252, 0.2);
  }
  .cv-pdf-btn-massive:hover {
    transform: translateY(-4px) scale(1.02);
    box-shadow: 0 15px 25px -5px rgba(17, 24, 39, 0.5);
    text-decoration: none;
  }
  html[data-theme='dark'] .cv-pdf-btn-massive:hover {
    box-shadow: 0 15px 25px -5px rgba(248, 250, 252, 0.3);
  }
  .cv-pdf-btn-massive i { 
    margin-right: 0.75rem; 
    font-size: 1.2rem;
  }
  
  /* Hide the default page header */
  header.post-header { display: none !important; }
  .navbar-brand.title { display: none !important; }

  /* ----------------------------------------------------
     REFERENCES SECTION
     ---------------------------------------------------- */
  .ref-section-title {
    text-align: center;
    font-size: 2.25rem;
    font-weight: 800;
    color: #111827;
    margin-bottom: 3rem;
    letter-spacing: -0.02em;
  }
  html[data-theme='dark'] .ref-section-title { color: #f8fafc; }

  .ref-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
    gap: 2rem;
    margin-bottom: 4rem;
  }

  .ref-card {
    background: #ffffff;
    border: 1px solid rgba(0,0,0,0.06);
    border-radius: 16px;
    padding: 2rem;
    box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.02);
    transition: all 0.3s ease;
    display: flex;
    flex-direction: column;
  }
  html[data-theme='dark'] .ref-card {
    background: #1e293b;
    border-color: rgba(255,255,255,0.05);
    box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.2);
  }
  .ref-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 15px 30px -10px rgba(0, 0, 0, 0.1);
  }
  html[data-theme='dark'] .ref-card:hover {
    box-shadow: 0 15px 30px -10px rgba(0, 0, 0, 0.4);
  }

  .ref-name {
    font-size: 1.3rem;
    font-weight: 700;
    color: #111827;
    margin-bottom: 0.25rem;
    line-height: 1.3;
  }
  html[data-theme='dark'] .ref-name { color: #f1f5f9; }

  .ref-title {
    font-size: 0.95rem;
    color: #3b82f6;
    font-weight: 600;
    margin-bottom: 0.5rem;
  }
  html[data-theme='dark'] .ref-title { color: #60a5fa; }

  .ref-inst {
    font-size: 0.95rem;
    color: #4b5563;
    line-height: 1.5;
    margin-bottom: 1.5rem;
    flex-grow: 1;
  }
  html[data-theme='dark'] .ref-inst { color: #cbd5e1; }

  .ref-details {
    display: flex;
    flex-direction: column;
    gap: 0.5rem;
    margin-bottom: 1.5rem;
    padding-top: 1.5rem;
    border-top: 1px solid rgba(0,0,0,0.06);
  }
  html[data-theme='dark'] .ref-details { border-top-color: rgba(255,255,255,0.1); }

  .ref-details span, .ref-details a {
    font-size: 0.9rem;
    color: #4b5563;
    display: flex;
    align-items: center;
    text-decoration: none;
    transition: color 0.2s;
  }
  html[data-theme='dark'] .ref-details span, html[data-theme='dark'] .ref-details a { color: #94a3b8; }
  .ref-details a:hover { color: #3b82f6; }
  
  .ref-details i {
    width: 20px;
    color: #9ca3af;
    margin-right: 0.5rem;
    text-align: center;
  }
  html[data-theme='dark'] .ref-details i { color: #64748b; }

  .ref-links {
    display: flex;
    flex-wrap: wrap;
    gap: 0.5rem;
  }
  
  .ref-btn {
    background: #f3f4f6;
    color: #374151 !important;
    padding: 0.4rem 0.8rem;
    border-radius: 6px;
    font-size: 0.8rem;
    font-weight: 500;
    text-decoration: none;
    transition: all 0.2s;
  }
  html[data-theme='dark'] .ref-btn {
    background: #334155;
    color: #e2e8f0 !important;
  }
  .ref-btn:hover {
    background: #e5e7eb;
    color: #111827 !important;
    text-decoration: none;
  }
  html[data-theme='dark'] .ref-btn:hover {
    background: #475569;
    color: #f8fafc !important;
  }
</style>

<div class="cv-download-container" data-aos="zoom-in" data-aos-duration="1000">
  <i class="fas fa-file-contract cv-icon" data-aos="fade-down" data-aos-delay="200"></i>
  <h1 class="cv-title" data-aos="fade-up" data-aos-delay="300">Curriculum Vitae</h1>
  <p class="cv-subtitle" data-aos="fade-up" data-aos-delay="400">
    A complete overview of my academic background, professional experience, publications, and conference presentations.
  </p>
  <a href="{{ page.cv_pdf | relative_url }}" target="_blank" class="cv-pdf-btn-massive" data-aos="fade-up" data-aos-delay="500">
    <i class="fas fa-download"></i> Download Full CV (PDF)
  </a>
</div>

<!-- PROFESSIONAL REFERENCES -->
<h2 class="ref-section-title" data-aos="fade-up">Professional References</h2>

<div class="ref-grid">
  
  <!-- REFERENCE 1 -->
  <div class="ref-card" data-aos="fade-up" data-aos-delay="100">
    <h3 class="ref-name">Prof. Dr. Hab. Paweł Moskal</h3>
    <p class="ref-title">Professor & Head of Department</p>
    <p class="ref-inst">Department of Experimental Particle Physics and Applications,<br>Jagiellonian University, Poland</p>
    
    <div class="ref-details">
      <a href="mailto:ufmoskal@googlemail.com"><i class="fas fa-envelope"></i> ufmoskal@googlemail.com</a>
      <span><i class="fas fa-phone"></i> +48 12 664 4558</span>
      <span><i class="fas fa-map-marker-alt"></i> Room B-2-52</span>
    </div>
    
    <div class="ref-links">
      <a href="https://zzfj.if.uj.edu.pl/cv_moskal" target="_blank" class="ref-btn"><i class="fas fa-external-link-alt"></i> Profile 1</a>
      <a href="https://koza.if.uj.edu.pl/staff/pmoskal" target="_blank" class="ref-btn"><i class="fas fa-external-link-alt"></i> Profile 2</a>
    </div>
  </div>

  <!-- REFERENCE 2 -->
  <div class="ref-card" data-aos="fade-up" data-aos-delay="200">
    <h3 class="ref-name">Dr. Sushil Kumar Sharma</h3>
    <p class="ref-title">Assistant Professor</p>
    <p class="ref-inst">Department of Experimental Particle Physics and Applications,<br>Jagiellonian University, Poland</p>
    
    <div class="ref-details">
      <a href="mailto:sushil.sharma@uj.edu.pl"><i class="fas fa-envelope"></i> sushil.sharma@uj.edu.pl</a>
      <span><i class="fas fa-phone"></i> +48 12 664 4530</span>
      <span><i class="fas fa-map-marker-alt"></i> Room B-2-23</span>
    </div>
    
    <div class="ref-links">
      <a href="https://dr-sushil-sharma.github.io/" target="_blank" class="ref-btn"><i class="fas fa-globe"></i> Website</a>
      <a href="https://koza.if.uj.edu.pl/staff/ssharma" target="_blank" class="ref-btn"><i class="fas fa-external-link-alt"></i> Profile 1</a>
    </div>
  </div>

  <!-- REFERENCE 3 -->
  <div class="ref-card" data-aos="fade-up" data-aos-delay="300">
    <h3 class="ref-name">Dr. Reimund Bayerlein</h3>
    <p class="ref-title">Assistant Project Scientist (Simulations & Image Reconstruction)</p>
    <p class="ref-inst">Department of Radiology, University of California, Davis (EXPLORER Molecular Imaging Center)</p>
    
    <div class="ref-details">
      <a href="mailto:rbayerlein@health.ucdavis.edu"><i class="fas fa-envelope"></i> rbayerlein@health.ucdavis.edu</a>
    </div>
    
    <div class="ref-links">
      <a href="https://scholar.google.com/citations?user=MYyrovEAAAAJ&hl=de" target="_blank" class="ref-btn"><i class="fas fa-graduation-cap"></i> Google Scholar</a>
      <a href="https://explorer.ucdavis.edu/our-team" target="_blank" class="ref-btn"><i class="fas fa-users"></i> Team Portal</a>
    </div>
  </div>

</div>

<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
  document.addEventListener("DOMContentLoaded", function() {
    setTimeout(function() { AOS.init({ once: true, offset: 20 }); }, 100);
  });
</script>