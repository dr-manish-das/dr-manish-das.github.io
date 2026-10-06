---
layout: page
title: Accomplishments
permalink: /accomplishments/
description: "Awards, honors, and recognitions."
nav: true
nav_order: 6
---

<style> header.post-header { display: none !important; }   .navbar-brand.title { display: none !important; }
</style>
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<style>
  .placeholder-wrapper { display: flex; flex-direction: column; align-items: center; justify-content: center; min-height: 50vh; text-align: center; position: relative; overflow: hidden; border-radius: 20px; background: linear-gradient(135deg, rgba(255,255,255,0.4) 0%, rgba(255,255,255,0.1) 100%); backdrop-filter: blur(20px); border: 1px solid rgba(255,255,255,0.2); box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.05); }
  html[data-theme='dark'] .placeholder-wrapper { background: linear-gradient(135deg, rgba(30,41,59,0.4) 0%, rgba(30,41,59,0.1) 100%); border: 1px solid rgba(255,255,255,0.05); box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.3); }
  .animated-icon { font-size: 4rem; margin-bottom: 1.5rem; background: linear-gradient(135deg, #0072ff 0%, #00c6ff 100%); -webkit-background-clip: text; -webkit-text-fill-color: transparent; animation: float 3s ease-in-out infinite; }
  html[data-theme='dark'] .animated-icon { background: linear-gradient(135deg, #89f7fe 0%, #66a6ff 100%); -webkit-background-clip: text; -webkit-text-fill-color: transparent; }
  @keyframes float { 0% { transform: translateY(0px); } 50% { transform: translateY(-15px); } 100% { transform: translateY(0px); } }
  .placeholder-text { font-size: 1.25rem; font-weight: 300; color: #4b5563; max-width: 600px; }
  html[data-theme='dark'] .placeholder-text { color: #9ca3af; }
  .navbar-brand.title { display: none !important; }
</style>

<div class="placeholder-wrapper mt-8" data-aos="zoom-in" data-aos-duration="1000">
  <div class="animated-icon">🏆</div>
  <h2 class="text-3xl font-serif font-bold mb-4">Tracking Milestones</h2>
  <p class="placeholder-text">A showcase of awards, academic honors, and professional milestones is currently being assembled. This page will be updated later to beautifully reflect these accomplishments.</p>
</div>

<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>document.addEventListener("DOMContentLoaded", function() { setTimeout(function() { AOS.init({ once: true }); }, 100); });</script>



<script>
document.addEventListener("DOMContentLoaded", function() {
  const existingCanvas = document.getElementById('global-rain-canvas');
  if(existingCanvas) existingCanvas.remove();

  const canvas = document.createElement('canvas');
  canvas.id = 'global-rain-canvas';
  canvas.style.position = 'fixed';
  canvas.style.top = '0';
  canvas.style.left = '0';
  canvas.style.width = '100vw';
  canvas.style.height = '100vh';
  canvas.style.pointerEvents = 'none'; 
  canvas.style.zIndex = '9999'; // Rain over everything
  document.body.appendChild(canvas);

  const ctx = canvas.getContext('2d');
  let width = canvas.width = window.innerWidth;
  let height = canvas.height = window.innerHeight;
  
  window.addEventListener('resize', () => {
    width = canvas.width = window.innerWidth;
    height = canvas.height = window.innerHeight;
  });

  const drops = [];
  const maxDrops = 250; // Increased for full screen
  
  for(let i = 0; i < maxDrops; i++) {
    const z = Math.random();
    drops.push({
      x: Math.random() * width,
      y: Math.random() * height,
      length: (z * 15) + 8,
      speed: (z * 4) + 6,
      opacity: (z * 0.4) + 0.1,
      vx: 0
    });
  }
  
  let mouse = { x: -1000, y: -1000 };
  
  document.addEventListener('mousemove', (e) => {
    mouse.x = e.clientX;
    mouse.y = e.clientY;
  });
  document.addEventListener('mouseleave', () => {
    mouse.x = -1000;
    mouse.y = -1000;
  });

  function draw() {
    ctx.clearRect(0, 0, width, height);
    
    const isDark = document.documentElement.getAttribute('data-theme') === 'dark';
    const baseColor = isDark ? '200, 215, 255' : '100, 115, 140';
    
    ctx.lineWidth = 1;
    ctx.lineCap = 'round';
    
    for(let i = 0; i < maxDrops; i++) {
      const drop = drops[i];
      
      const dx = drop.x - mouse.x;
      const dy = drop.y - mouse.y;
      const dist = Math.sqrt(dx*dx + dy*dy);
      
      if(dist < 150) {
        const force = (150 - dist) / 150;
        drop.vx += (dx / dist) * force * 0.6;
      }
      
      drop.x += drop.vx;
      drop.y += drop.speed;
      drop.vx *= 0.92;
      
      if(drop.y > height + 20 || drop.x < -40 || drop.x > width + 40) {
        drop.y = -20;
        drop.x = Math.random() * width;
        drop.vx = 0;
      }
      
      ctx.strokeStyle = `rgba(${baseColor}, ${drop.opacity})`;
      ctx.beginPath();
      ctx.moveTo(drop.x, drop.y);
      ctx.lineTo(drop.x - drop.vx * 2, drop.y - drop.length);
      ctx.stroke();
    }
    
    requestAnimationFrame(draw);
  }
  draw();
});
</script>