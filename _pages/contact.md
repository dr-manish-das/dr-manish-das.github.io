---
layout: page
title: Contact
permalink: /contact/
description: 
nav: true
nav_order: 6
---

<style> header.post-header { display: none !important; }    </style>
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/jpswalsh/academicons@1/css/academicons.min.css">

<style>
  .contact-layout {
    width: 100vw;
    max-width: 1100px;
    margin-left: 50%;
    transform: translateX(-50%);
    display: grid;
    grid-template-columns: 1fr;
    gap: 4rem;
    padding: 3rem 0;
  }
  @media (min-width: 992px) {
    .contact-layout {
    width: 100vw;
    max-width: 1100px;
    margin-left: 50%;
    transform: translateX(-50%); grid-template-columns: 1fr 1fr; }
  }

  /* LEFT SIDE: Intro & Map */
  .contact-left {
    display: flex;
    flex-direction: column;
    gap: 2rem;
  }
  .contact-title {
    font-size: 4rem;
    font-weight: 900;
    color: #111827;
    line-height: 1.1;
    letter-spacing: -0.04em;
    margin-bottom: 0.5rem;
  }
  html[data-theme='dark'] .contact-title { color: #f8fafc; }
  
  .contact-desc {
    font-size: 1.25rem;
    color: #6b7280;
    line-height: 1.7;
    margin-bottom: 1rem;
    font-weight: 400;
  }
  html[data-theme='dark'] .contact-desc { color: #9ca3af; }

  .office-card {
    background: linear-gradient(135deg, #ffffff 0%, #f8fafc 100%);
    border: 1px solid rgba(0, 0, 0, 0.05);
    border-radius: 24px;
    padding: 2rem;
    box-shadow: 0 10px 30px -10px rgba(0, 0, 0, 0.05);
    display: flex;
    align-items: center;
    gap: 1.5rem;
  }
  html[data-theme='dark'] .office-card {
    background: linear-gradient(135deg, #1e293b 0%, #0f172a 100%);
    border: 1px solid rgba(255, 255, 255, 0.05);
    box-shadow: 0 10px 30px -10px rgba(0, 0, 0, 0.3);
  }
  
  .office-icon {
    font-size: 2.5rem;
    color: #3b82f6;
    background: rgba(59, 130, 246, 0.1);
    width: 80px; height: 80px;
    display: flex; align-items: center; justify-content: center;
    border-radius: 50%;
  }
  html[data-theme='dark'] .office-icon { color: #60a5fa; background: rgba(96, 165, 250, 0.1); }
  
  .office-text { font-size: 1.1rem; color: #4b5563; line-height: 1.6; }
  html[data-theme='dark'] .office-text { color: #cbd5e1; }
  .office-text strong { color: #111827; }
  html[data-theme='dark'] .office-text strong { color: #f8fafc; }

  .map-card {
    border-radius: 24px;
    overflow: hidden;
    box-shadow: 0 10px 30px -10px rgba(0, 0, 0, 0.1);
    height: 250px;
    border: 1px solid rgba(0,0,0,0.05);
  }
  html[data-theme='dark'] .map-card { border-color: rgba(255,255,255,0.05); box-shadow: 0 10px 30px -10px rgba(0,0,0,0.4); }
  .map-card iframe { width: 100%; height: 100%; border: none; }

  /* RIGHT SIDE: 3D Social Grid */
  .contact-right {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 1.5rem;
    perspective: 1000px;
  }
  
  /* Staggering the right column */
  .contact-right .social-card:nth-child(even) {
    transform: translateY(2rem);
  }

  .social-card {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    padding: 2.5rem 1rem;
    background: #ffffff;
    border-radius: 24px;
    text-decoration: none !important;
    border: 1px solid rgba(0, 0, 0, 0.05);
    box-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.05);
    position: relative;
    overflow: hidden;
    z-index: 1;
    transform-style: preserve-3d;
    transition: box-shadow 0.3s ease, border 0.3s ease;
    will-change: transform;
  }
  html[data-theme='dark'] .social-card {
    background: #1e293b;
    border: 1px solid rgba(255, 255, 255, 0.05);
    box-shadow: 0 10px 25px -5px rgba(0, 0, 0, 0.3);
  }
  
  .social-card::before {
    content: ''; position: absolute; inset: 0; z-index: -1; opacity: 0; transition: opacity 0.4s ease;
  }
  .social-card.email::before { background: linear-gradient(135deg, rgba(234, 67, 53, 0.1) 0%, transparent 100%); }
  .social-card.linkedin::before { background: linear-gradient(135deg, rgba(10, 102, 194, 0.1) 0%, transparent 100%); }
  .social-card.github::before { background: linear-gradient(135deg, rgba(24, 23, 23, 0.1) 0%, transparent 100%); }
  html[data-theme='dark'] .social-card.github::before { background: linear-gradient(135deg, rgba(255, 255, 255, 0.1) 0%, transparent 100%); }
  .social-card.scholar::before { background: linear-gradient(135deg, rgba(66, 133, 244, 0.1) 0%, transparent 100%); }
    .social-card.facebook::before { background: linear-gradient(135deg, rgba(24, 119, 242, 0.1) 0%, transparent 100%); }
  .social-card.orcid::before { background: linear-gradient(135deg, rgba(166, 206, 57, 0.15) 0%, transparent 100%); }

  .social-card:hover {
    box-shadow: 0 25px 40px -15px rgba(0, 0, 0, 0.15);
  }
  html[data-theme='dark'] .social-card:hover { box-shadow: 0 25px 40px -15px rgba(0, 0, 0, 0.5); }
  .social-card:hover::before { opacity: 1; }

  .social-icon {
    font-size: 3.5rem;
    margin-bottom: 1.5rem;
    transform: translateZ(30px); /* 3D pop out effect */
    transition: transform 0.4s ease;
  }
  .social-card.email .social-icon { color: #EA4335; }
  .social-card.linkedin .social-icon { color: #0A66C2; }
  .social-card.github .social-icon { color: #181717; }
  html[data-theme='dark'] .social-card.github .social-icon { color: #ffffff; }
  .social-card.scholar .social-icon { color: #4285F4; }
    .social-card.facebook .social-icon { color: #1877F2; }
  .social-card.orcid .social-icon { color: #A6CE39; }

  .social-label {
    font-weight: 800;
    color: #111827;
    font-size: 1.25rem;
    transform: translateZ(20px);
  }
  html[data-theme='dark'] .social-label { color: #f8fafc; }
  
  .social-sub {
    font-weight: 400;
    color: #6b7280;
    font-size: 0.95rem;
    margin-top: 0.25rem;
    text-align: center;
    transform: translateZ(10px);
  }
  html[data-theme='dark'] .social-sub { color: #9ca3af; }

</style>

<div class="contact-layout">

  <!-- LEFT: Intro & Office -->
  <div class="contact-left">
    <div data-aos="fade-right" data-aos-duration="1000">
      <h1 class="contact-title">Let's start a conversation.</h1>
      <p class="contact-desc">
        Whether you want to discuss research collaborations, invite me for a talk, or just say hello, my inbox is always open.
        <br><br>
        <strong>Invite me for a talk, and let's go grab some beers afterwards! 🍻</strong>
      </p>
    </div>

    <div class="office-card" data-aos="fade-up" data-aos-delay="200">
      <div class="office-icon">
        <i class="fas fa-map-marker-alt"></i>
      </div>
      <div class="office-text">
        <strong>Office Location:</strong><br/>
        Room B-2-46, Institute of Physics<br/>
        Jagiellonian University<br/>
        31-007 Kraków, Poland
      </div>
    </div>

    <div class="map-card" data-aos="fade-up" data-aos-delay="300">
      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2561.423168243469!2d19.90232431571746!3d50.03153597941785!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47165c71b6d0e5b9%3A0x6b6bb17f8a7a9d3e!2sFaculty%20of%20Physics%2C%20Astronomy%20and%20Applied%20Computer%20Science%2C%20Jagiellonian%20University!5e0!3m2!1sen!2spl!4v1684820000000!5m2!1sen!2spl" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
  </div>

  <!-- RIGHT: 3D Interactive Social Grid -->
  <div class="contact-right">
    
    <a href="mailto:manish.das@doctoral.uj.edu.pl" class="social-card email" data-aos="zoom-in" data-aos-delay="100">
      <i class="fas fa-envelope social-icon"></i>
      <div class="social-label">Email</div>
      <div class="social-sub">manish.das@<br>doctoral.uj.edu.pl</div>
    </a>

    <a href="https://scholar.google.com/citations?user=jC9VkWsAAAAJ" target="_blank" class="social-card scholar" data-aos="zoom-in" data-aos-delay="200">
      <i class="ai ai-google-scholar social-icon"></i>
      <div class="social-label">Scholar</div>
      <div class="social-sub">View Publications</div>
    </a>

    <a href="https://www.linkedin.com/in/manish-das-645898209" target="_blank" class="social-card linkedin" data-aos="zoom-in" data-aos-delay="300">
      <i class="fab fa-linkedin social-icon"></i>
      <div class="social-label">LinkedIn</div>
      <div class="social-sub">Connect</div>
    </a>

    <a href="https://github.com/dr-manish-das" target="_blank" class="social-card github" data-aos="zoom-in" data-aos-delay="400">
      <i class="fab fa-github social-icon"></i>
      <div class="social-label">GitHub</div>
      <div class="social-sub">Explore Code</div>
    </a>

    <a href="https://www.facebook.com/manish.das.90" target="_blank" class="social-card facebook" data-aos="zoom-in" data-aos-delay="500">
      <i class="fab fa-facebook social-icon"></i>
      <div class="social-label">Facebook</div>
      <div class="social-sub">Message Me</div>
    </a>

    <a href="https://orcid.org/0009-0001-2901-1745" target="_blank" class="social-card orcid" data-aos="zoom-in" data-aos-delay="600">
      <i class="ai ai-orcid social-icon"></i>
      <div class="social-label">ORCID</div>
      <div class="social-sub">Research Profile</div>
    </a>

  </div>

</div>

<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
  document.addEventListener("DOMContentLoaded", function() {
    setTimeout(function() { AOS.init({ once: true, offset: 20 }); }, 100);

    // Interactive 3D Tilt Effect for Social Cards
    const cards = document.querySelectorAll('.social-card');
    cards.forEach(card => {
      // Set initial transform so CSS transition handles the reset smoothly
      card.style.transform = 'perspective(1000px) rotateX(0deg) rotateY(0deg) scale3d(1, 1, 1)';
      
      card.addEventListener('mousemove', e => {
        // Disable CSS transition during mousemove for instant tracking
        card.style.transition = 'none';
        
        const rect = card.getBoundingClientRect();
        const x = e.clientX - rect.left; 
        const y = e.clientY - rect.top;  
        const centerX = rect.width / 2;
        const centerY = rect.height / 2;
        
        // Calculate rotation angles (max 15 degrees)
        const rotateX = ((y - centerY) / centerY) * -15; 
        const rotateY = ((x - centerX) / centerX) * 15;
        
        card.style.transform = `perspective(1000px) rotateX(${rotateX}deg) rotateY(${rotateY}deg) scale3d(1.05, 1.05, 1.05)`;
      });
      
      card.addEventListener('mouseleave', () => {
        // Restore CSS transition for smooth snap back
        card.style.transition = 'transform 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275), box-shadow 0.3s ease, border 0.3s ease';
        card.style.transform = 'perspective(1000px) rotateX(0deg) rotateY(0deg) scale3d(1, 1, 1)';
      });
    });
  });
</script>
