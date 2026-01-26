<%-- 
    Document   : foster-details
    Created on : 27 Jan 2026, 3:52:19 am
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pusak Kamek - Foster Details</title>
    <link rel="stylesheet" href="style.css">
    <style>
        :root {
            --brand-maroon: #7a0019;
            --white: #ffffff;
        }

        /* --- Global Font Normalization --- */
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size: 16px;
        }

        /* --- Navbar Styles (Unified) --- */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 5%;
            background-color: var(--brand-maroon);
            color: white;
        }

        .logo-text { 
            font-weight: bold; 
            line-height: 1.2; 
            font-size: 18px; 
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
            font-size: 16px; /* Consistency Fix */
            padding: 8px 16px;
            border-radius: 20px;
            transition: 0.3s;
        }

        /* Highlight for the active page (Foster) */
        .nav-link-active {
            background-color: rgba(0, 0, 0, 0.2);
        }

        .user-profile-icon a {
            font-size: 24px;
            text-decoration: none;
            color: white;
            cursor: pointer;
        }

        /* --- Page Layout Styles --- */
        .page-wrapper {
            padding: 60px 5%;
            background-color: #fff;
        }

        .container {
            max-width: 1100px;
            margin: 0 auto;
        }

        .foster-row {
            display: flex;
            align-items: center;
            gap: 50px;
            margin-bottom: 60px;
        }

        .foster-row.reverse {
            flex-direction: row-reverse;
        }

        .foster-text {
            flex: 1;
        }

        .foster-text h2 {
            color: var(--brand-maroon);
            font-size: 32px;
            margin-bottom: 20px;
        }

        .foster-list {
            list-style: none;
            padding: 0;
        }

        .foster-list li {
            margin-bottom: 15px;
            padding-left: 30px;
            position: relative;
            line-height: 1.6;
        }

        .foster-list li::before {
            content: '🐾';
            position: absolute;
            left: 0;
            color: var(--brand-maroon);
        }

        .foster-image {
            flex: 1;
        }

        .foster-image img {
            width: 100%;
            border-radius: 40px;
            box-shadow: 0 15px 30px rgba(0,0,0,0.1);
        }

        /* CTA Banner */
        .cta-banner {
            background-color: #6a0016;
            padding: 60px 40px;
            border-radius: 40px;
            text-align: center;
            margin-top: 40px;
        }

        .btn-gold {
            display: inline-block;
            background: white;
            color: black;
            padding: 18px 40px;
            border-radius: 40px;
            text-decoration: none;
            font-weight: 800;
            margin-top: 10px;
            transition: 0.3s;
        }

        .btn-gold:hover {
            transform: scale(1.05);
            background-color: #f0f0f0;
        }

        @media (max-width: 850px) {
            .navbar nav { display: none; }
            .foster-row, .foster-row.reverse { flex-direction: column; text-align: center; }
            .foster-list li { text-align: left; }
        }
    </style>
</head>
<body>

    <header class="navbar">
        <div class="logo-text">PUSAK KAMEK<br><small>Rescue - Rehome - Rebuild</small></div>
        <nav>
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><a href="stories.html">Stories</a></li>
                <li><a href="petbrowse.html">Pet</a></li>
                <li><a href="adopt.html">Adopt</a></li>
                <li><a href="foster-details.html" class="nav-link-active">Foster</a></li>
                <li><a href="donation.html">Donate</a></li>
                <li><a href="volunteer.html">Volunteer</a></li>
            </ul>
        </nav>
        <div class="user-profile-icon">
            <a href="profile.html">👤</a>
        </div>
    </header>

    <main class="page-wrapper">
        <div class="container">
            
            <div class="foster-row">
                <div class="foster-text">
                    <h2>Your Responsibilities</h2>
                    <ul class="foster-list">
                        <li>Provide a safe, secure, and loving environment.</li>
                        <li>Ensure daily feeding, fresh water, and basic hygiene.</li>
                        <li>Socialize the animal through play and positive interaction.</li>
                        <li>Transport the animal to scheduled vet appointments.</li>
                        <li>Report health or behavioral concerns immediately.</li>
                    </ul>
                </div>
                <div class="foster-image">
                    <img src="https://images.unsplash.com/photo-1548191265-cc70d3d45ba1?auto=format&fit=crop&q=80&w=800" alt="Loving Foster Home">
                </div>
            </div>

            <div class="foster-row reverse">
                <div class="foster-text">
                    <h2>Pusak Kamek Support!</h2>
                    <ul class="foster-list">
                        <li><strong>Medical Care:</strong> All vet bills and medication covered.</li>
                        <li><strong>Essentials:</strong> Food, crates, and litter upon request.</li>
                        <li><strong>Guidance:</strong> Direct access to a Foster Coordinator.</li>
                        <li><strong>Matching:</strong> We help you choose the animal that fits your home.</li>
                    </ul>
                </div>
                <div class="foster-image">
                    <img src="https://images.unsplash.com/photo-1516734212186-a967f81ad0d7?auto=format&fit=crop&q=80&w=800" alt="Shelter Support">
                </div>
            </div>

            <div class="cta-banner">
                <h2 style="color: white; margin-top: 0; font-size: 32px;">Ready To Be a Foster Hero?</h2>
                <p style="color: #f7e9e9; margin-bottom: 25px; font-size: 18px;">Fostering is the most direct way to save an animal's life.</p>
                <a href="foster-application.html" class="btn-gold">Start Your Foster Application Now</a>
            </div>

        </div>
    </main>

    <footer class="bottom-bar"></footer>
</body>
</html>