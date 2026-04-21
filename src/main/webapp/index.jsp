<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>NexusShop — Modern E‑Commerce</title>

  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

  <style>
    :root {
      --bg: #ffffff;
      --primary: #0a2540;
      --accent: #00d4ff;
      --muted: #7a7a7a;
      --surface: #f6f9fc;
      --success: #28a745;
      --radius: 14px;
      --container: 1200px;
    }

    * {
      box-sizing: border-box;
      transition: all .25s ease;
    }

    body {
      margin: 0;
      font-family: Inter, system-ui, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.5;
    }

    a {
      text-decoration: none;
      color: inherit;
    }

    .container {
      max-width: var(--container);
      margin: auto;
      padding: 0 20px;
    }

    /* HEADER */
    header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(255,255,255,.9);
      backdrop-filter: blur(14px);
      border-bottom: 1px solid rgba(0,0,0,.03);
      box-shadow: 0 8px 30px rgba(0,0,0,.05);
    }

    .header-inner {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 14px 0;
    }

    .brand {
      font-family: Poppins;
      font-size: 22px;
      font-weight: 700;
      background: linear-gradient(90deg, var(--primary), var(--accent));
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
    }

    nav ul {
      display: flex;
      gap: 16px;
      list-style: none;
      padding: 0;
      margin: 0;
    }

    nav a {
      padding: 8px 12px;
      border-radius: 10px;
      font-weight: 500;
    }

    nav a:hover {
      background: var(--surface);
      color: var(--accent);
    }

    .search {
      display: flex;
      align-items: center;
      gap: 8px;
      background: var(--surface);
      padding: 8px 14px;
      border-radius: 999px;
      min-width: 240px;
    }

    .search input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
    }

    /* HERO */
    .hero {
      background:
        linear-gradient(180deg, rgba(10,37,64,.7), rgba(10,37,64,.5)),
        url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover;
      color: white;
      padding: 90px 20px;
      text-align: center;
      border-radius: 0 0 var(--radius) var(--radius);
    }

    .hero h1 {
      font-family: Poppins;
      font-size: 42px;
      margin-bottom: 12px;
    }

    .hero p {
      max-width: 780px;
      margin: auto;
      opacity: .95;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      padding: 12px 22px;
      border-radius: 999px;
      font-weight: 600;
      border: 0;
      cursor: pointer;
      margin-top: 18px;
    }

    .btn-primary {
      background: linear-gradient(135deg, var(--accent), #009dff);
      color: #042233;
      box-shadow: 0 12px 30px rgba(0,212,255,.35);
    }

    .btn-primary:hover {
      transform: translateY(-2px) scale(1.03);
    }

    .section {
      padding: 60px 0;
    }

    .title {
      text-align: center;
      margin-bottom: 32px;
    }

    .grid {
      display: grid;
      gap: 22px;
    }

    /* CATEGORIES */
    .categories {
      grid-template-columns: repeat(auto-fit, minmax(160px,1fr));
    }

    .cat-card {
      background: white;
      padding: 22px;
      border-radius: var(--radius);
      text-align: center;
      box-shadow: 0 12px 35px rgba(10,37,64,.08);
      cursor: pointer;
    }

    .cat-card:hover {
      transform: translateY(-8px);
    }

    .cat-card .icon {
      font-size: 28px;
      color: var(--accent);
      margin-bottom: 8px;
    }

    /* PRODUCTS */
    .products {
      grid-template-columns: repeat(auto-fit, minmax(240px,1fr));
    }

    .product {
      background: white;
      border-radius: var(--radius);
      box-shadow: 0 12px 35px rgba(10,37,64,.08);
      overflow: hidden;
    }

    .product img {
      width: 100%;
      height: 200px;
      object-fit: cover;
    }

    .product:hover img {
      transform: scale(1.08);
    }

    .product-body {
      padding: 14px;
    }

    .price {
      font-weight: 700;
    }

    .add-btn {
      width: 100%;
      background: var(--primary);
      color: white;
      border: 0;
      padding: 10px;
      border-radius: 10px;
      cursor: pointer;
      margin-top: 10px;
    }

    .add-btn:hover {
      background: var(--accent);
      color: #042233;
    }

    /* NEWSLETTER */
    .newsletter {
      background: linear-gradient(135deg, #0a2540, #003e6b);
      color: white;
      text-align: center;
      padding: 40px;
      border-radius: var(--radius);
    }

    .newsletter input {
      padding: 12px 16px;
      border-radius: 999px;
      border: 0;
      width: 280px;
    }

    footer {
      border-top: 1px solid rgba(0,0,0,.05);
      padding: 40px 0;
      color: var(--muted);
      font-size: 14px;
    }
  </style>
</head>

<body>

<header>
  <div class="container header-inner">
    <div class="brand">NexusShop</div>
    <nav>
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Categories</a></li>
        <li><a href="#deals">Deals</a></li>
        <li><a href="#about">About</a></li>
      </ul>
    </nav>
    <div class="search">
      <input type="search" placeholder="Search products...">
      <i class="fas fa-search"></i>
    </div>
  </div>
</header>

<section class="hero">
  <h1>Super Collection — Premium Picks</h1>
  <p>Discover trend‑setting fashion, cutting‑edge gadgets and best‑selling accessories.</p>
  <button class="btn btn-primary">Shop Now</button>
</section>

<section class="section container">
  <div class="title">
    <h2>Shop by Category</h2>
    <p class="muted">Browse curated collections</p>
  </div>
  <div class="grid categories">
    <div class="cat-card"><div class="icon"><i class="fas fa-mobile-alt"></i></div>Phones</div>
    <div class="cat-card"><div class="icon"><i class="fas fa-laptop"></i></div>Laptops</div>
    <div class="cat-card"><div class="icon"><i class="fas fa-headphones"></i></div>Gadgets</div>
    <div class="cat-card"><div class="icon"><i class="fas fa-watch"></i></div>Accessories</div>
  </div>
</section>

<section class="section container">
  <div class="title">
    <h2>Trending Products</h2>
  </div>
  <div class="grid products">
    <div class="product">
      <img src="https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80">
      <div class="product-body">
        <h4>iPhone 14 Pro Max</h4>
        <div class="price">$1,099</div>
        <button class="add-btn">Add to Cart</button>
      </div>
    </div>
    <div class="product">
      <img src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80">
      <div class="product-body">
        <h4>MacBook Pro</h4>
        <div class="price">$1,999</div>
        <button class="add-btn">Add to Cart</button>
      </div>
    </div>
  </div>
</section>

<section class="section container">
  <div class="newsletter">
    <h3>Stay in the loop</h3>
    <p>Get exclusive deals & new arrivals</p>
    <input type="email" placeholder="Enter your email">
    <br><br>
    <button class="btn btn-primary">Subscribe</button>
  </div>
</section>

<footer>
  <div class="container text-center">
    © <span id="year"></span> NexusShop. All rights reserved.
  </div>
</footer>

<script>
  document.getElementById('year').textContent = new Date().getFullYear();
</script>

</body>
</html>
