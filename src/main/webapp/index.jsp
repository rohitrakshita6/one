<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Harmony University · College Website</title>
  <!-- Font Awesome 5 (free) -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Segoe UI', Roboto, system-ui, -apple-system, sans-serif;
    }

    body {
      background: #f9fbfd;
      color: #1e2b3c;
      line-height: 1.6;
    }

    a {
      text-decoration: none;
    }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 2rem;
    }

    /* ---- header / navigation ---- */
    header {
      background: #0b1a2b;
      color: #fff;
      padding: 0.75rem 0;
      box-shadow: 0 4px 12px rgba(0,0,0,0.08);
      position: sticky;
      top: 0;
      z-index: 50;
    }

    .navbar {
      display: flex;
      justify-content: space-between;
      align-items: center;
      flex-wrap: wrap;
    }

    .logo {
      font-size: 1.8rem;
      font-weight: 700;
      letter-spacing: -0.5px;
      display: flex;
      align-items: center;
      gap: 0.5rem;
    }

    .logo i {
      color: #f0b34b;
      font-size: 2rem;
    }

    .nav-links {
      display: flex;
      gap: 2.2rem;
      font-weight: 500;
    }

    .nav-links a {
      color: #eef3f8;
      transition: 0.2s;
      font-size: 1.05rem;
      letter-spacing: 0.3px;
      border-bottom: 2px solid transparent;
      padding-bottom: 4px;
    }

    .nav-links a:hover {
      color: #f0b34b;
      border-bottom-color: #f0b34b;
    }

    .nav-cta {
      background: #f0b34b;
      color: #0b1a2b !important;
      padding: 0.45rem 1.2rem;
      border-radius: 40px;
      font-weight: 600;
      border-bottom: none !important;
      transition: 0.2s;
    }

    .nav-cta:hover {
      background: #f7c46a;
      color: #0b1a2b !important;
      transform: scale(1.02);
    }

    /* ---- hero ---- */
    .hero {
      background: linear-gradient(145deg, #eef4fa 0%, #dce6f0 100%);
      padding: 4rem 0 5rem;
      border-bottom: 1px solid rgba(0,0,0,0.03);
    }

    .hero-grid {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 3rem;
      align-items: center;
    }

    .hero h1 {
      font-size: 3.6rem;
      font-weight: 700;
      line-height: 1.2;
      color: #0b1a2b;
      letter-spacing: -1px;
    }

    .hero h1 span {
      color: #b8863b;
      background: linear-gradient(135deg, #b8863b, #f0b34b);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }

    .hero p {
      font-size: 1.25rem;
      margin: 1.5rem 0 2rem;
      color: #2a3f54;
      max-width: 90%;
    }

    .hero-buttons {
      display: flex;
      flex-wrap: wrap;
      gap: 1rem;
    }

    .btn-primary {
      background: #0b1a2b;
      color: #fff;
      padding: 0.9rem 2.4rem;
      border-radius: 50px;
      font-weight: 600;
      transition: 0.2s;
      box-shadow: 0 8px 18px rgba(11, 26, 43, 0.15);
      display: inline-flex;
      align-items: center;
      gap: 0.6rem;
    }

    .btn-primary:hover {
      background: #1d3550;
      transform: translateY(-3px);
      box-shadow: 0 12px 24px rgba(11, 26, 43, 0.2);
    }

    .btn-outline {
      background: transparent;
      border: 2px solid #0b1a2b;
      color: #0b1a2b;
      padding: 0.85rem 2.2rem;
      border-radius: 50px;
      font-weight: 600;
      transition: 0.2s;
      display: inline-flex;
      align-items: center;
      gap: 0.6rem;
    }

    .btn-outline:hover {
      background: #0b1a2b;
      color: #fff;
      transform: translateY(-3px);
    }

    .hero-image {
      background: rgba(255,255,255,0.6);
      backdrop-filter: blur(2px);
      border-radius: 32px;
      padding: 1.5rem;
      box-shadow: 0 20px 40px -12px rgba(0,0,0,0.15);
      text-align: center;
      border: 1px solid rgba(255,255,255,0.5);
    }

    .hero-image i {
      font-size: 8rem;
      color: #0b1a2b;
      opacity: 0.9;
      background: #fff;
      padding: 1.5rem;
      border-radius: 60px;
      box-shadow: 0 8px 24px rgba(0,0,0,0.04);
    }

    .hero-image p {
      margin-top: 1rem;
      font-weight: 500;
      color: #1e2b3c;
      font-size: 1.1rem;
    }

    .hero-image small {
      display: block;
      color: #4a5f72;
      font-size: 0.95rem;
    }

    /* ---- stats / quick info ---- */
    .stats {
      display: flex;
      justify-content: space-around;
      flex-wrap: wrap;
      gap: 1.5rem 2rem;
      background: #fff;
      padding: 2.5rem 1.5rem;
      margin: -2.5rem auto 0;
      border-radius: 60px;
      box-shadow: 0 12px 30px rgba(0,0,0,0.04);
      border: 1px solid rgba(255,255,255,0.6);
      backdrop-filter: blur(4px);
      position: relative;
      max-width: 1000px;
    }

    .stat-item {
      display: flex;
      align-items: center;
      gap: 0.8rem;
    }

    .stat-item i {
      font-size: 2.2rem;
      color: #b8863b;
    }

    .stat-item h3 {
      font-size: 1.8rem;
      font-weight: 700;
      color: #0b1a2b;
      line-height: 1.2;
    }

    .stat-item p {
      color: #406279;
      font-weight: 500;
    }

    /* ---- featured section (cards) ---- */
    .featured {
      padding: 5rem 0 4rem;
    }

    .section-title {
      font-size: 2.5rem;
      font-weight: 700;
      text-align: center;
      margin-bottom: 1rem;
      color: #0b1a2b;
    }

    .section-sub {
      text-align: center;
      color: #406279;
      font-size: 1.2rem;
      max-width: 600px;
      margin: 0 auto 3rem;
    }

    .card-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
      gap: 2.5rem;
    }

    .card {
      background: #fff;
      padding: 2rem 1.8rem;
      border-radius: 32px;
      box-shadow: 0 8px 24px rgba(0, 0, 0, 0.02);
      transition: 0.25s ease;
      border: 1px solid #f0f5fb;
      text-align: center;
    }

    .card:hover {
      transform: translateY(-10px);
      box-shadow: 0 24px 48px -12px rgba(11, 26, 43, 0.12);
      border-color: #dce6f0;
    }

    .card i {
      font-size: 3rem;
      color: #b8863b;
      background: #f2f6fc;
      padding: 0.9rem;
      border-radius: 20px;
      margin-bottom: 1.2rem;
    }

    .card h3 {
      font-size: 1.5rem;
      font-weight: 600;
      margin-bottom: 0.75rem;
    }

    .card p {
      color: #406279;
      font-size: 1rem;
    }

    /* ---- campus life / CTA ---- */
    .campus-section {
      background: #0b1a2b;
      color: #fff;
      padding: 4rem 0;
      border-radius: 60px 60px 0 0;
      margin-top: 2rem;
    }

    .campus-grid {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 3rem;
      align-items: center;
    }

    .campus-text h2 {
      font-size: 2.8rem;
      font-weight: 700;
      line-height: 1.2;
    }

    .campus-text h2 span {
      color: #f0b34b;
    }

    .campus-text p {
      font-size: 1.2rem;
      opacity: 0.85;
      margin: 1.5rem 0;
      max-width: 90%;
    }

    .campus-btn {
      background: #f0b34b;
      color: #0b1a2b;
      padding: 0.9rem 2.8rem;
      border-radius: 60px;
      font-weight: 700;
      display: inline-block;
      transition: 0.2s;
    }

    .campus-btn:hover {
      background: #f7c46a;
      transform: scale(1.02);
    }

    .campus-image {
      display: flex;
      justify-content: center;
      gap: 1.5rem;
      flex-wrap: wrap;
    }

    .campus-image i {
      font-size: 5rem;
      background: rgba(255,255,255,0.06);
      padding: 1.8rem;
      border-radius: 40px;
      border: 1px solid rgba(255,255,255,0.08);
      backdrop-filter: blur(4px);
    }

    /* ---- footer ---- */
    footer {
      background: #06111c;
      color: #b6c9db;
      padding: 3rem 0 2rem;
    }

    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr;
      gap: 3rem;
      margin-bottom: 2.5rem;
    }

    .footer-brand h4 {
      color: #fff;
      font-size: 1.8rem;
      font-weight: 600;
      margin-bottom: 0.6rem;
    }

    .footer-brand i {
      color: #f0b34b;
      margin-right: 6px;
    }

    .footer-links h5, .footer-contact h5 {
      color: #fff;
      font-size: 1.2rem;
      margin-bottom: 1rem;
    }

    .footer-links a, .footer-contact p {
      display: block;
      color: #b6c9db;
      margin-bottom: 0.6rem;
      transition: 0.2s;
    }

    .footer-links a:hover {
      color: #f0b34b;
    }

    .footer-bottom {
      border-top: 1px solid #1a2d40;
      padding-top: 2rem;
      text-align: center;
      font-size: 0.95rem;
      color: #7a93aa;
    }

    /* responsive */
    @media (max-width: 900px) {
      .hero-grid {
        grid-template-columns: 1fr;
        text-align: center;
      }
      .hero p {
        max-width: 100%;
        margin-left: auto;
        margin-right: auto;
      }
      .hero-buttons {
        justify-content: center;
      }
      .stats {
        flex-direction: column;
        align-items: center;
        border-radius: 40px;
        padding: 2rem 1rem;
      }
      .campus-grid {
        grid-template-columns: 1fr;
        text-align: center;
      }
      .campus-text p {
        max-width: 100%;
      }
      .footer-grid {
        grid-template-columns: 1fr;
        gap: 2rem;
      }
      .navbar {
        flex-direction: column;
        gap: 0.8rem;
      }
      .nav-links {
        flex-wrap: wrap;
        justify-content: center;
        gap: 1.2rem;
      }
      .hero h1 {
        font-size: 2.8rem;
      }
    }

    @media (max-width: 480px) {
      .container {
        padding: 0 1.2rem;
      }
      .hero h1 {
        font-size: 2.2rem;
      }
      .btn-primary, .btn-outline {
        padding: 0.7rem 1.8rem;
      }
    }
  </style>
</head>
<body>

  <!-- HEADER -->
  <header>
    <div class="container navbar">
      <div class="logo">
        <i class="fas fa-university"></i> HarmonyU
      </div>
      <div class="nav-links">
        <a href="#">Academics</a>
        <a href="#">Admissions</a>
        <a href="#">Campus</a>
        <a href="#">News</a>
        <a href="#" class="nav-cta"><i class="fas fa-calendar-check"></i> Apply</a>
      </div>
    </div>
  </header>

  <!-- HERO -->
  <section class="hero">
    <div class="container hero-grid">
      <div>
        <h1>Shape your future <br><span>with purpose.</span></h1>
        <p>Harmony University combines rigorous academics with a vibrant campus life. Join a community where curiosity meets opportunity.</p>
        <div class="hero-buttons">
          <a href="#" class="btn-primary"><i class="fas fa-graduation-cap"></i> Explore programs</a>
          <a href="#" class="btn-outline"><i class="fas fa-map-pin"></i> Visit campus</a>
        </div>
      </div>
      <div class="hero-image">
        <i class="fas fa-landmark"></i>
        <p>Welcome to Harmony</p>
        <small>Est. 1926 · Ranked among top 50</small>
      </div>
    </div>
  </section>

  <!-- STATS BAR (floating) -->
  <div class="container" style="position: relative; z-index: 5;">
    <div class="stats">
      <div class="stat-item">
        <i class="fas fa-user-graduate"></i>
        <div>
          <h3>12k+</h3>
          <p>Students</p>
        </div>
      </div>
      <div class="stat-item">
        <i class="fas fa-globe-americas"></i>
        <div>
          <h3>84</h3>
          <p>Countries</p>
        </div>
      </div>
      <div class="stat-item">
        <i class="fas fa-flask"></i>
        <div>
          <h3>240+</h3>
          <p>Programs</p>
        </div>
      </div>
      <div class="stat-item">
        <i class="fas fa-trophy"></i>
        <div>
          <h3>32</h3>
          <p>Research centers</p>
        </div>
      </div>
    </div>
  </div>

  <!-- FEATURED / CARDS -->
  <section class="featured container">
    <h2 class="section-title">Explore our community</h2>
    <p class="section-sub">From cutting-edge labs to creative studios, find your path at Harmony.</p>
    <div class="card-grid">
      <div class="card">
        <i class="fas fa-laptop-code"></i>
        <h3>Digital innovation</h3>
        <p>AI, robotics, data science — our STEM programs are built for the future.</p>
      </div>
      <div class="card">
        <i class="fas fa-palette"></i>
        <h3>Arts &amp; humanities</h3>
        <p>Explore creative expression through music, theater, literature and design.</p>
      </div>
      <div class="card">
        <i class="fas fa-heartbeat"></i>
        <h3>Health &amp; wellness</h3>
        <p>Nursing, public health, sports medicine — care for communities.</p>
      </div>
      <div class="card">
        <i class="fas fa-handshake"></i>
        <h3>Business &amp; law</h3>
        <p>Develop leadership skills with our globally recognized programs.</p>
      </div>
    </div>
  </section>

  <!-- CAMPUS LIFE (dark) -->
  <section class="campus-section">
    <div class="container campus-grid">
      <div class="campus-text">
        <h2>Life at <span>Harmony</span></h2>
        <p>More than classes — discover over 200 student clubs, state-of-the-art recreation, and a supportive residential community that feels like home.</p>
        <a href="#" class="campus-btn"><i class="fas fa-camera"></i> Take a virtual tour</a>
      </div>
      <div class="campus-image">
        <i class="fas fa-futbol"></i>
        <i class="fas fa-music"></i>
        <i class="fas fa-microscope"></i>
        <i class="fas fa-book-open"></i>
      </div>
    </div>
  </section>

  <!-- FOOTER -->
  <footer>
    <div class="container">
      <div class="footer-grid">
        <div class="footer-brand">
          <h4><i class="fas fa-university"></i> HarmonyU</h4>
          <p style="max-width: 300px;">Empowering minds since 1926. A diverse, inclusive community dedicated to knowledge and impact.</p>
          <div style="margin-top: 1rem; font-size: 1.6rem; letter-spacing: 6px;">
            <i class="fab fa-facebook-f"></i>
            <i class="fab fa-twitter"></i>
            <i class="fab fa-instagram"></i>
            <i class="fab fa-linkedin-in"></i>
          </div>
        </div>
        <div class="footer-links">
          <h5>Quick links</h5>
          <a href="#">Academic calendar</a>
          <a href="#">Financial aid</a>
          <a href="#">Library</a>
          <a href="#">Athletics</a>
          <a href="#">Careers</a>
        </div>
        <div class="footer-contact">
          <h5>Get in touch</h5>
          <p><i class="fas fa-phone-alt" style="margin-right: 10px;"></i> +1 (800) 555‑0199</p>
          <p><i class="fas fa-envelope" style="margin-right: 10px;"></i> admissions@harmony.edu</p>
          <p><i class="fas fa-map-marker-alt" style="margin-right: 10px;"></i> 400 College Ave, Harmony, MA</p>
        </div>
      </div>
      <div class="footer-bottom">
        &copy; 2026 Harmony University. All rights reserved.
      </div>
    </div>
  </footer>
</body>
</html>
