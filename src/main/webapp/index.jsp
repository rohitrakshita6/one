<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>NexusShop · modern e‑commerce</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">
  <style>
    * { box-sizing: border-box; margin: 0; }
    body {
      font-family: 'Inter', system-ui, sans-serif;
      background: #fafcff;
      color: #0a2540;
      line-height: 1.5;
    }
    :root {
      --bg: #ffffff;
      --primary: #0a2540;
      --accent: #00c8ff;
      --surface: #f2f7fc;
      --muted: #6b7a8f;
      --radius: 14px;
      --shadow: 0 12px 30px rgba(10,37,64,0.06);
    }
    .container {
      max-width: 1240px;
      margin: 0 auto;
      padding: 0 20px;
    }
    /* header */
    header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(255,255,255,0.92);
      backdrop-filter: blur(6px);
      border-bottom: 1px solid rgba(10,37,64,0.04);
    }
    .header-inner {
      display: flex;
      flex-wrap: wrap;
      align-items: center;
      justify-content: space-between;
      padding: 12px 0;
      gap: 12px;
    }
    .brand {
      font-family: 'Poppins', sans-serif;
      font-weight: 700;
      font-size: 1.5rem;
      display: flex;
      align-items: center;
      gap: 6px;
      color: var(--primary);
      text-decoration: none;
    }
    .brand .accent { color: var(--accent); }
    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--surface);
      border-radius: 40px;
      padding: 5px 12px 5px 18px;
      gap: 6px;
      min-width: 200px;
      flex: 1 1 220px;
    }
    .search-wrap input {
      border: none;
      background: transparent;
      padding: 8px 0;
      font-size: 0.9rem;
      width: 100%;
      outline: none;
    }
    .search-wrap button {
      background: transparent;
      border: none;
      color: var(--primary);
      cursor: pointer;
      padding: 4px 6px;
    }
    .header-actions {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .icon-btn {
      background: transparent;
      border: none;
      font-size: 1.2rem;
      color: var(--primary);
      cursor: pointer;
      padding: 6px 8px;
      border-radius: 30px;
      transition: 0.2s;
    }
    .icon-btn:hover { background: var(--surface); }
    .cart-wrap {
      position: relative;
      display: inline-flex;
      align-items: center;
    }
    .cart-count {
      position: absolute;
      top: -6px;
      right: -6px;
      background: var(--accent);
      color: #0a2540;
      font-weight: 700;
      font-size: 0.7rem;
      width: 20px;
      height: 20px;
      border-radius: 40px;
      display: grid;
      place-items: center;
    }
    .main-nav ul {
      display: flex;
      gap: 6px;
      list-style: none;
      padding: 0;
      margin: 0;
      flex-wrap: wrap;
    }
    .main-nav a {
      display: inline-flex;
      align-items: center;
      gap: 6px;
      padding: 8px 14px;
      border-radius: 30px;
      font-weight: 500;
      color: var(--primary);
      text-decoration: none;
      transition: 0.2s;
    }
    .main-nav a:hover { background: var(--surface); color: var(--accent); }
    .mobile-toggle {
      display: none;
      background: transparent;
      border: none;
      font-size: 1.4rem;
      cursor: pointer;
    }
    #mobileMenu {
      background: white;
      border-top: 1px solid rgba(0,0,0,0.03);
      padding: 8px 0 16px;
    }
    #mobileMenu ul {
      list-style: none;
      padding: 0;
      margin: 0;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    #mobileMenu a {
      display: block;
      padding: 10px 12px;
      border-radius: 12px;
      font-weight: 500;
      color: var(--primary);
      text-decoration: none;
    }
    #mobileMenu a:hover { background: var(--surface); }
    /* hero */
    .hero {
      background: linear-gradient(135deg, #0b2b4a 0%, #0a1f33 100%);
      color: white;
      padding: 50px 20px 48px;
      border-radius: 0 0 var(--radius) var(--radius);
      text-align: center;
      margin-bottom: 16px;
    }
    .hero h1 {
      font-family: 'Poppins', sans-serif;
      font-size: 2.5rem;
      letter-spacing: -0.02em;
      margin-bottom: 16px;
    }
    .hero p {
      opacity: 0.85;
      max-width: 700px;
      margin: 0 auto 24px;
      font-size: 1.1rem;
    }
    .btn-group {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 14px;
    }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 12px 28px;
      border-radius: 40px;
      font-weight: 600;
      border: none;
      cursor: pointer;
      transition: 0.2s;
      text-decoration: none;
    }
    .btn-primary {
      background: var(--accent);
      color: #042233;
    }
    .btn-primary:hover { transform: scale(0.97); opacity: 0.9; }
    .btn-outline {
      background: transparent;
      border: 2px solid rgba(255,255,255,0.25);
      color: white;
    }
    .btn-outline:hover { background: rgba(255,255,255,0.08); }
    /* section titles */
    .section-title {
      text-align: center;
      margin: 40px 0 8px;
    }
    .section-title h2 {
      font-family: 'Poppins', sans-serif;
      font-size: 1.8rem;
      margin-bottom: 4px;
    }
    .section-title p { color: var(--muted); }
    /* categories */
    .cat-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(140px, 1fr));
      gap: 16px;
      margin: 18px 0 28px;
    }
    .cat-card {
      background: white;
      border-radius: var(--radius);
      padding: 20px 12px;
      text-align: center;
      box-shadow: var(--shadow);
      transition: 0.2s;
      cursor: pointer;
      border: 1px solid transparent;
    }
    .cat-card:hover {
      transform: translateY(-4px);
      border-color: var(--accent);
    }
    .cat-card .icon {
      font-size: 2rem;
      color: var(--accent);
      margin-bottom: 6px;
    }
    .cat-card h4 { font-weight: 600; font-size: 1rem; }
    /* products */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
      gap: 20px;
      margin: 20px 0 30px;
    }
    .product-card {
      background: white;
      border-radius: var(--radius);
      box-shadow: var(--shadow);
      overflow: hidden;
      display: flex;
      flex-direction: column;
      transition: 0.2s;
    }
    .product-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 20px 30px rgba(0,0,0,0.04);
    }
    .product-card img {
      width: 100%;
      height: 180px;
      object-fit: cover;
      display: block;
    }
    .product-body {
      padding: 14px 14px 8px;
      flex: 1;
    }
    .product-body h5 {
      font-weight: 600;
      font-size: 1rem;
      margin: 0 0 4px;
    }
    .product-body .category {
      font-size: 0.8rem;
      color: var(--muted);
      text-transform: uppercase;
      letter-spacing: 0.03em;
    }
    .price-row {
      display: flex;
      align-items: center;
      gap: 8px;
      margin-top: 8px;
      flex-wrap: wrap;
    }
    .price-current {
      font-weight: 700;
      font-size: 1.15rem;
    }
    .price-old {
      color: var(--muted);
      text-decoration: line-through;
      font-size: 0.9rem;
    }
    .rating {
      color: #f5b342;
      font-size: 0.85rem;
      margin-left: auto;
    }
    .product-footer {
      display: flex;
      gap: 8px;
      padding: 6px 14px 14px;
    }
    .add-btn {
      flex: 1;
      background: var(--primary);
      color: white;
      border: none;
      padding: 10px 0;
      border-radius: 30px;
      font-weight: 600;
      cursor: pointer;
      transition: 0.2s;
    }
    .add-btn:hover { background: #1a3b5e; }
    .wish-btn {
      background: transparent;
      border: 1px solid #e6edf4;
      border-radius: 30px;
      padding: 8px 14px;
      cursor: pointer;
      transition: 0.2s;
    }
    .wish-btn:hover { background: var(--surface); }
    /* deal card */
    .deal-card {
      display: flex;
      flex-wrap: wrap;
      background: white;
      border-radius: var(--radius);
      box-shadow: var(--shadow);
      overflow: hidden;
      margin: 20px 0 30px;
    }
    .deal-card img {
      width: 100%;
      max-width: 400px;
      height: 260px;
      object-fit: cover;
      flex: 1 1 200px;
    }
    .deal-content {
      flex: 1 1 240px;
      padding: 24px 28px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-content h3 {
      font-family: 'Poppins', sans-serif;
      font-size: 1.6rem;
      margin: 0 0 8px;
    }
    .deal-timer {
      display: flex;
      gap: 10px;
      margin: 12px 0;
      flex-wrap: wrap;
    }
    .time-box {
      background: var(--primary);
      color: white;
      padding: 6px 12px;
      border-radius: 10px;
      min-width: 60px;
      text-align: center;
    }
    .time-box span {
      display: block;
      font-weight: 700;
      font-size: 1.4rem;
    }
    .deal-price {
      display: flex;
      align-items: center;
      gap: 14px;
      margin: 8px 0 12px;
    }
    .deal-price .current {
      font-weight: 700;
      font-size: 1.7rem;
    }
    .deal-price .old {
      color: var(--muted);
      text-decoration: line-through;
      font-size: 1rem;
    }
    .badge-discount {
      background: #f03e3e;
      color: white;
      padding: 4px 12px;
      border-radius: 30px;
      font-weight: 700;
      font-size: 0.85rem;
    }
    /* testimonials */
    .testimonial-scroll {
      display: flex;
      gap: 18px;
      overflow-x: auto;
      padding: 12px 4px 20px;
    }
    .testimonial {
      min-width: 250px;
      background: white;
      border-radius: var(--radius);
      padding: 18px;
      box-shadow: var(--shadow);
      flex: 0 0 auto;
    }
    .testimonial .stars { color: #f5b342; letter-spacing: 2px; }
    .testimonial p { margin: 10px 0; }
    /* newsletter */
    .newsletter-box {
      background: var(--primary);
      color: white;
      border-radius: var(--radius);
      padding: 36px 24px;
      text-align: center;
      margin: 30px 0;
    }
    .newsletter-box input {
      padding: 12px 18px;
      border-radius: 60px;
      border: none;
      width: 260px;
      max-width: 80%;
      margin-right: 6px;
      outline: none;
    }
    .newsletter-box .btn-primary {
      background: var(--accent);
      color: #042233;
    }
    /* footer */
    footer {
      border-top: 1px solid #eef3f8;
      padding: 32px 0 16px;
      margin-top: 20px;
      color: var(--muted);
    }
    .footer-grid {
      display: flex;
      flex-wrap: wrap;
      gap: 28px;
      justify-content: space-between;
    }
    .footer-grid .col { min-width: 140px; }
    .footer-grid .col h5 {
      color: var(--primary);
      font-weight: 600;
      margin-bottom: 8px;
    }
    .footer-grid .col p { line-height: 1.8; }
    .socials {
      display: flex;
      gap: 14px;
      margin-top: 10px;
    }
    .socials a {
      color: var(--muted);
      font-size: 1.2rem;
    }
    .socials a:hover { color: var(--primary); }
    .muted { color: var(--muted); }
    @media (max-width: 700px) {
      .main-nav { display: none; }
      .mobile-toggle { display: inline-block; }
      .hero h1 { font-size: 2rem; }
      .search-wrap { min-width: 140px; flex: 1 1 100%; order: 10; margin-top: 6px; }
      .header-inner { gap: 6px; }
      .deal-card img { max-width: 100%; height: 200px; }
    }
    @media (max-width: 480px) {
      .product-grid { grid-template-columns: 1fr 1fr; gap: 12px; }
      .cat-grid { grid-template-columns: 1fr 1fr; }
    }
  </style>
</head>
<body>
<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:8px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="menu"><i class="fas fa-bars"></i></button>
      <a href="#" class="brand">Nexus<span class="accent">Shop</span></a>
    </div>
    <nav class="main-nav" aria-label="main">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#" id="catMenuBtn"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
      </ul>
    </nav>
    <div class="search-wrap">
      <input type="text" id="searchInput" placeholder="Search products…" aria-label="search">
      <button id="searchBtn"><i class="fas fa-search"></i></button>
    </div>
    <div class="header-actions">
      <button class="icon-btn" aria-label="wishlist"><i class="far fa-heart"></i></button>
      <div class="cart-wrap">
        <button class="icon-btn" id="cartBtn" aria-label="cart"><i class="fas fa-shopping-cart"></i></button>
        <span class="cart-count" id="cartCount">0</span>
      </div>
    </div>
  </div>
  <div id="mobileMenu" style="display:none; background:white; padding:0 20px 16px;">
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">Categories</a></li>
      <li><a href="#deals">Deals</a></li>
      <li><a href="#">Trending</a></li>
    </ul>
  </div>
</header>

<main>
  <section class="hero">
    <div class="container">
      <h1>Winter Collection · Premium Picks</h1>
      <p>Explore the latest in fashion, tech & lifestyle. Curated for you with limited deals & free shipping.</p>
      <div class="btn-group">
        <button class="btn btn-primary" id="shopNowBtn"><i class="fas fa-arrow-right"></i> Shop now</button>
        <button class="btn btn-outline" id="exploreDealsBtn">Explore deals</button>
      </div>
    </div>
  </section>

  <div class="container">
    <div class="section-title">
      <h2>Shop by Category</h2>
      <p class="muted">Browse our curated collections</p>
    </div>
    <div class="cat-grid" id="categoriesGrid"></div>
  </div>

  <div class="container">
    <div class="section-title" id="prodTitle">
      <h2>Trending Products</h2>
      <p class="muted">Popular picks based on your interest</p>
    </div>
    <div class="product-grid" id="productsGrid"></div>
  </div>

  <div class="container" id="deals">
    <div class="section-title">
      <h2>⚡ Flash Sale</h2>
      <p class="muted">Limited time – grab before they're gone</p>
    </div>
    <div class="deal-card">
      <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80" alt="MacBook Air M2" loading="lazy">
      <div class="deal-content">
        <h3>MacBook Air M2</h3>
        <p class="muted">Supercharged by M2 — thin, light, and fast.</p>
        <div class="deal-timer">
          <div class="time-box"><span id="dealDays">0</span>Days</div>
          <div class="time-box"><span id="dealHours">00</span>H</div>
          <div class="time-box"><span id="dealMinutes">00</span>M</div>
          <div class="time-box"><span id="dealSeconds">00</span>S</div>
        </div>
        <div class="deal-price">
          <span class="current">$999</span>
          <span class="old">$1,199</span>
          <span class="badge-discount">-17%</span>
        </div>
        <p style="margin:4px 0 12px;"><strong>12</strong> items left at this price</p>
        <button class="btn btn-primary" id="buyDealBtn" style="align-self:flex-start;"><i class="fas fa-cart-plus"></i> Buy now</button>
      </div>
    </div>
  </div>

  <div class="container">
    <div class="section-title">
      <h2>What our customers say</h2>
      <p class="muted">Real reviews from verified buyers</p>
    </div>
    <div class="testimonial-scroll" id="testimonialsWrap">
      <div class="testimonial">
        <div class="stars">★★★★★</div>
        <p>"Fast delivery, great quality – exceeded expectations!"</p>
        <div style="display:flex;align-items:center;gap:8px;margin-top:6px;">
          <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=60&h=60&q=80" style="width:40px;height:40px;border-radius:50%;object-fit:cover;" alt="avatar">
          <div><strong>Ava Martin</strong><div class="muted" style="font-size:0.8rem;">Verified buyer</div></div>
        </div>
      </div>
      <div class="testimonial">
        <div class="stars">★★★★☆</div>
        <p>"Smooth checkout and excellent customer support."</p>
        <div style="display:flex;align-items:center;gap:8px;margin-top:6px;">
          <img src="https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=60&h=60&q=80" style="width:40px;height:40px;border-radius:50%;object-fit:cover;" alt="avatar">
          <div><strong>Michael Lee</strong><div class="muted" style="font-size:0.8rem;">Frequent buyer</div></div>
        </div>
      </div>
      <div class="testimonial">
        <div class="stars">★★★★★</div>
        <p>"Love the variety and the deals are amazing."</p>
        <div style="display:flex;align-items:center;gap:8px;margin-top:6px;">
          <img src="https://images.unsplash.com/photo-1438761681033-6461ffad8d80?auto=format&fit=crop&w=60&h=60&q=80" style="width:40px;height:40px;border-radius:50%;object-fit:cover;" alt="avatar">
          <div><strong>Sophie Chen</strong><div class="muted" style="font-size:0.8rem;">Top reviewer</div></div>
        </div>
      </div>
    </div>
  </div>

  <div class="container">
    <div class="newsletter-box">
      <h3 style="font-family:'Poppins',sans-serif;">Stay in the loop</h3>
      <p>Subscribe for exclusive offers & new arrivals</p>
      <form id="newsletterForm" style="display:flex;justify-content:center;flex-wrap:wrap;gap:8px;">
        <input type="email" id="newsletterEmail" placeholder="Enter your email" required>
        <button class="btn btn-primary" id="subscribeBtn">Subscribe</button>
      </form>
      <div id="newsletterMsg" style="margin-top:12px;font-size:0.95rem;display:none;"></div>
    </div>
  </div>
</main>

<footer>
  <div class="container footer-grid">
    <div class="col">
      <div style="font-weight:700;font-size:1.2rem;color:var(--primary);">NexusShop</div>
      <p class="muted" style="max-width:240px;">Modern e‑commerce demo – clean, fast, and friendly.</p>
      <div class="socials">
        <a href="#"><i class="fab fa-facebook"></i></a>
        <a href="#"><i class="fab fa-twitter"></i></a>
        <a href="#"><i class="fab fa-instagram"></i></a>
      </div>
    </div>
    <div class="col"><h5>Company</h5><p>About<br>Careers<br>Press</p></div>
    <div class="col"><h5>Support</h5><p>Help Center<br>Shipping &amp; Returns<br>Contact</p></div>
    <div class="col"><h5>Legal</h5><p>Privacy<br>Terms</p></div>
  </div>
  <div style="text-align:center;padding-top:18px;color:var(--muted);font-size:0.85rem;">© <span id="year"></span> NexusShop – all rights reserved</div>
</footer>

<script>
  (function() {
    // ----- sample data -----
    const CATEGORIES = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
    ];

    const PRODUCTS = [
      { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=400&q=80', category: 'phones' },
      { id: 2, title: 'MacBook Pro 14"', price: 1999, oldPrice: null, rating: 4, reviews: 86, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=400&q=80', category: 'laptops' },
      { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
      { id: 4, title: 'Nike Air Max 270', price: 150, oldPrice: null, rating: 4, reviews: 53, img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=400&q=80', category: 'footwear' },
      { id: 5, title: 'Sony A7 IV Camera', price: 2499, oldPrice: null, rating: 5, reviews: 42, img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=400&q=80', category: 'gadgets' },
      { id: 6, title: 'Chanel No.5', price: 120, oldPrice: null, rating: 5, reviews: 189, img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
      { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=400&q=80', category: 'accessories' },
      { id: 8, title: 'Sony WH-1000XM5', price: 399, oldPrice: null, rating: 5, reviews: 156, img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=400&q=80', category: 'gadgets' }
    ];

    let cartCount = 0;
    const cartCountEl = document.getElementById('cartCount');

    // render categories
    function renderCategories() {
      const grid = document.getElementById('categoriesGrid');
      grid.innerHTML = '';
      CATEGORIES.forEach(cat => {
        const div = document.createElement('div');
        div.className = 'cat-card';
        div.innerHTML = `<div class="icon"><i class="fas ${cat.icon}"></i></div><h4>${cat.name}</h4>`;
        div.addEventListener('click', () => {
          document.getElementById('searchInput').value = cat.name;
          filterProducts(cat.name);
          document.getElementById('prodTitle').scrollIntoView({ behavior: 'smooth', block: 'start' });
        });
        grid.appendChild(div);
      });
    }

    function renderProducts(list) {
      const grid = document.getElementById('productsGrid');
      grid.innerHTML = '';
      list.forEach(p => {
        const card = document.createElement('div');
        card.className = 'product-card';
        const starStr = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
        card.innerHTML = `
          <img src="${p.img}" alt="${p.title}" loading="lazy">
          <div class="product-body">
            <h5>${p.title}</h5>
            <div class="category">${p.category}</div>
            <div class="price-row">
              <span class="price-current">$${p.price.toLocaleString()}</span>
              ${p.oldPrice ? `<span class="price-old">$${p.oldPrice.toLocaleString()}</span>` : ''}
              <span class="rating">${starStr} ${p.reviews}</span>
            </div>
          </div>
          <div class="product-footer">
            <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
            <button class="wish-btn" aria-label="wishlist"><i class="far fa-heart"></i></button>
          </div>
        `;
        grid.appendChild(card);
      });
      document.querySelectorAll('.add-btn').forEach(btn => {
        btn.addEventListener('click', function() {
          const id = Number(this.dataset.id);
          const product = PRODUCTS.find(x => x.id === id);
          if (product) {
            cartCount++;
            cartCountEl.textContent = cartCount;
            this.innerHTML = '<i class="fas fa-check"></i> Added';
            setTimeout(() => { this.innerHTML = '<i class="fas fa-cart-plus"></i> Add'; }, 1000);
          }
        });
      });
    }

    function filterProducts(query) {
      const q = query.trim().toLowerCase();
      if (!q) { renderProducts(PRODUCTS); return; }
      const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
      renderProducts(filtered);
    }

    // search
    document.getElementById('searchBtn').addEventListener('click', () => filterProducts(document.getElementById('searchInput').value));
    document.getElementById('searchInput').addEventListener('keydown', (e) => { if (e.key === 'Enter') filterProducts(e.target.value); });

    // mobile menu
    document.getElementById('mobileToggle').addEventListener('click', function() {
      const menu = document.getElementById('mobileMenu');
      menu.style.display = menu.style.display === 'none' ? 'block' : 'none';
    });

    // deal timer (24h from now)
    (function dealTimer() {
      const target = new Date(Date.now() + 24 * 3600 * 1000 + 36 * 60 * 1000);
      const dEl = document.getElementById('dealDays'), hEl = document.getElementById('dealHours'), mEl = document.getElementById('dealMinutes'), sEl = document.getElementById('dealSeconds');
      function tick() {
        const diff = target - Date.now();
        if (diff <= 0) { dEl.textContent='0'; hEl.textContent='00'; mEl.textContent='00'; sEl.textContent='00'; return; }
        dEl.textContent = Math.floor(diff / (24*3600*1000));
        hEl.textContent = String(Math.floor((diff % (24*3600*1000)) / (3600*1000))).padStart(2,'0');
        mEl.textContent = String(Math.floor((diff % (3600*1000)) / (60*1000))).padStart(2,'0');
        sEl.textContent = String(Math.floor((diff % (60*1000)) / 1000)).padStart(2,'0');
      }
      tick(); setInterval(tick, 1000);
    })();

    // newsletter
    document.getElementById('newsletterForm').addEventListener('submit', function(e) {
      e.preventDefault();
      const email = document.getElementById('newsletterEmail').value.trim();
      const msg = document.getElementById('newsletterMsg');
      if (!email || !email.includes('@')) {
        msg.style.display = 'block'; msg.textContent = 'Please enter a valid email.'; msg.style.color = '#ffb3b3';
        return;
      }
      msg.style.display = 'block'; msg.textContent = '✅ Subscribed!'; msg.style.color = '#cce7ff';
      document.getElementById('newsletterEmail').value = '';
      setTimeout(() => msg.style.display = 'none', 3000);
    });

    // quick actions
    document.getElementById('shopNowBtn').addEventListener('click', () => document.getElementById('prodTitle').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('exploreDealsBtn').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));
    document.getElementById('buyDealBtn').addEventListener('click', function() {
      cartCount++; cartCountEl.textContent = cartCount;
      this.innerHTML = '<i class="fas fa-check"></i> Added';
      setTimeout(() => { this.innerHTML = '<i class="fas fa-cart-plus"></i> Buy now'; }, 1200);
    });

    // init
    renderCategories();
    renderProducts(PRODUCTS);
    document.getElementById('year').textContent = new Date().getFullYear();
  })();
</script>
</body>
</html>
