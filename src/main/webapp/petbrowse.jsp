<%-- 
    Document   : pet-browse
    Created on : 27 Jan 2026, 3:53:45 am
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pusak Kamek - Browse Pets</title>
    <link rel="stylesheet" href="style.css">
    <style>
        :root {
            --brand-maroon: #7a0019;
            --white: #ffffff;
        }

        /* --- Navbar Styles (Unified & Font Fixed) --- */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 5%;
            background-color: var(--brand-maroon);
            color: white;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .logo-text { 
            font-weight: bold; 
            line-height: 1.2; 
            font-size: 18px; /* Fixed size */
        }
        
        .logo-text small { 
            font-weight: normal; 
            font-size: 12px; 
        }

        .navbar nav ul {
            display: flex;
            list-style: none;
            gap: 30px;
            margin: 0;
            padding: 0;
        }

        .navbar nav ul li a {
            color: white;
            text-decoration: none;
            font-weight: 500;
            font-size: 16px; /* Fixed font size to match other pages */
            padding: 8px 16px;
            border-radius: 20px;
            transition: 0.3s;
        }

        /* Highlight for the active page (Pet) */
        .nav-link-active {
            background-color: rgba(0, 0, 0, 0.2);
        }

        .user-profile-icon a {
            font-size: 24px;
            text-decoration: none;
            color: white;
            cursor: pointer;
        }

        /* --- Page Specific Styles --- */
        .page-wrapper {
            padding: 40px 5%;
        }

        .search-container {
            background: white;
            border-radius: 30px;
            padding: 10px 25px;
            display: flex;
            align-items: center;
            max-width: 600px;
            margin: 0 auto 30px;
        }

        .search-container input {
            border: none;
            outline: none;
            width: 100%;
            padding: 5px 10px;
            font-size: 16px;
        }

        .pet-category-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
            margin-top: 20px;
        }

        .pet-card {
            background: #fce8eb;
            border-radius: 20px;
            padding: 15px;
            text-align: center;
            transition: 0.3s;
        }

        .pet-card:hover {
            transform: translateY(-5px);
            background: #f8d0d6;
        }

        .pet-card-image img {
            width: 100%;
            height: 150px;
            object-fit: cover;
            border-radius: 15px;
        }

        .pet-card h3 {
            color: var(--brand-maroon);
            margin-top: 10px;
            font-size: 20px;
        }

        @media (max-width: 768px) {
            .navbar nav { display: none; }
        }
    </style>
</head>
<body style="background-color: #7a0019; margin: 0;"> 

    <header class="navbar">
        <div class="logo-text">PUSAK KAMEK<br><small>Rescue - Rehome - Rebuild</small></div>
        <nav>
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><a href="stories.html">Stories</a></li>
                <li><a href="petbrowse.html" class="nav-link-active">Pet</a></li>
                <li><a href="adopt.html">Adopt</a></li>
                <li><a href="foster-details.html">Foster</a></li>
                <li><a href="donation.html">Donate</a></li>
                <li><a href="volunteer.html">Volunteer</a></li>
            </ul>
        </nav>
        <div class="user-profile-icon">
            <a href="profile.html">?</a>
        </div>
    </header>

    <main class="page-wrapper">
        <div class="container">
            
            <div class="search-container">
                <span class="search-icon">🔍</span>
                <input type="text" placeholder="Search for a specific breed or pet...">
            </div>

            <h2 style="color: white; font-family: 'Cursive', sans-serif; text-align: right; margin-bottom: 20px; font-weight: normal;">we are looking for a home</h2>

           <div class="pet-category-grid">
            <a href="catpage.html" style="text-decoration: none;">
                <div class="pet-card">
                    <div class="pet-card-image">
                        <img src="https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?q=80&w=500" alt="Cat">
                    </div>
                    <h3>Cat</h3>
                </div>
            </a>

            <a href="dogpage.html" style="text-decoration: none;">
                <div class="pet-card">
                    <div class="pet-card-image">
                        <img src="https://images.unsplash.com/photo-1543466835-00a7907e9de1?q=80&w=500" alt="Dog">
                    </div>
                    <h3>Dog</h3>
                </div>
            </a>

            <a href="rabbitpage.html" style="text-decoration: none;">
                <div class="pet-card">
                    <div class="pet-card-image">
                        <img src="https://images.unsplash.com/photo-1518717758536-85ae29035b6d?q=80&w=500" alt="Rabbit">
                    </div>
                    <h3>Rabbit</h3>
                </div>
            </a>

            <a href="hamsterpage.html" style="text-decoration: none;">
                <div class="pet-card">
                    <div class="pet-card-image">
                        <img src="https://images.unsplash.com/photo-1548767797-d8c844163c4c?q=80&w=500" alt="Hamster">
                    </div>
                    <h3>Hamster</h3>
                </div>
            </a>
        </div>

            <div style="text-align: center; margin-top: 40px;">
                <a href="#" class="btn-gold" style="background: white; color: black; padding: 15px 60px; border-radius: 40px; text-decoration: none; font-weight: 800;">BROWSE MORE</a>
            </div>

        </div>
    </main>

    <footer class="bottom-bar"></footer>
</body>
</html>
