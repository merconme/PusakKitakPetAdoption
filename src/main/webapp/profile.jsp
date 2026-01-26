<%-- 
    Document   : profile
    Created on : 27 Jan 2026, 3:54:05 am
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pusak Kamek - My Profile</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        :root {
            --primary-maroon: #7a0019;
            --btn-green: #2d6a4f; /* A subtle green for check-in tasks */
        }

        body {
            background-color: var(--primary-maroon);
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* --- Navbar Styles (Updated to match Profile Page exactly) --- */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 5%;
            background-color: var(--brand-maroon);
            color: white;
        }

        .logo-text { font-weight: bold; line-height: 1.2; }
        .logo-text small { font-weight: normal; font-size: 12px; }

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
            padding: 8px 16px; /* Added padding for the active highlight */
            border-radius: 20px;
            transition: 0.3s;
        }

        /* Highlight for the active page */
        .nav-link-active {
            background-color: rgba(0, 0, 0, 0.2);
        }

        .user-profile-icon a {
            font-size: 24px;
            text-decoration: none;
            color: white;
            cursor: pointer;
            transition: 0.3s;
        }


        /* --- Profile Container Styles --- */
        .profile-wrapper {
            background-color: white;
            margin: 20px auto;
            width: 95%;
            max-width: 1100px;
            border-radius: 50px;
            padding: 40px;
            min-height: 80vh;
            position: relative;
        }

        .top-nav-arrow {
            position: absolute;
            right: 40px;
            top: 40px;
            font-size: 20px;
            color: #333;
            border: 1px solid #ddd;
            width: 40px;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            text-decoration: none;
        }

        .user-info-card {
            display: flex;
            align-items: center;
            gap: 40px;
            padding: 30px;
            border-radius: 30px;
            background: #fff;
            border: 1px solid #eee;
            margin: 30px 0 50px 0;
        }

        .profile-pic-container img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
        }

        .user-details { flex-grow: 1; }
        .user-details p { margin: 10px 0; font-size: 16px; color: #333; }

        .edit-btn {
            background-color: var(--primary-maroon);
            color: white;
            padding: 10px 25px;
            border-radius: 25px;
            text-decoration: none;
            font-weight: bold;
        }

        /* --- Content Sections --- */
        .section-title { 
            display: flex; 
            align-items: center; 
            gap: 10px; 
            font-size: 20px; 
            margin-bottom: 20px;
            margin-top: 40px; 
            border-bottom: 2px solid #f0f0f0;
            padding-bottom: 10px;
        }
        
        .grid-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
            gap: 20px;
        }

        .pet-card {
            background: #f9f9f9;
            padding: 20px;
            border-radius: 20px;
            text-align: center;
            transition: 0.3s;
        }

        .pet-card:hover { transform: translateY(-5px); box-shadow: 0 5px 15px rgba(0,0,0,0.1); }

        .pet-card img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 10px;
        }

        /* --- Check-in Button Style --- */
        .checkin-btn {
            display: inline-block;
            margin-top: 10px;
            background-color: var(--primary-maroon);
            color: white;
            padding: 8px 20px;
            border-radius: 20px;
            text-decoration: none;
            font-size: 14px;
            font-weight: bold;
        }

        @media (max-width: 768px) {
            .user-info-card { flex-direction: column; text-align: center; }
            .navbar nav { display: none; }
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
                <li><a href="adopt-history.html">Adopt</a></li>
                <li><a href="foster.html">Foster</a></li>
                <li><a href="donate.html">Donate</a></li>
                <li><a href="volunteer.html">Volunteer</a></li>
            </ul>
        </nav>
        <div class="user-profile-icon">
            <a href="profile.html"  title="Go to Profile">👤</a>
        </div>
    </header>

    <main>
        <div class="profile-wrapper">
            <a href="petbrowse.html" class="top-nav-arrow"><i class="fa-solid fa-arrow-right"></i></a>
            
            <h2 style="font-size: 32px; margin-top: 0;">My Profile</h2>

            <div class="user-info-card">
                <div class="profile-pic-container">
                    <img src="https://images.unsplash.com/photo-1503777119540-ce54b422baff?q=80&w=200" alt="User Image">
                </div>
                <div class="user-details">
                    <p><strong>Name:</strong> Ariana Lee</p>
                    <p><strong>Phone Number:</strong> 012-3456789</p>
                    <p><strong>Email:</strong> arianalee@gmail.com</p>
                    <p><strong>Address:</strong> Kuching, Sarawak</p>
                </div>
                <div>
                    <a href="edit-profile.html" class="edit-btn">Edit Profile</a>
                </div>
            </div>

            <div class="section-title">
                <i class="fa-solid fa-house-chimney-window"></i>
                <strong>My Adopted Pets</strong>
            </div>

            <div class="grid-container">
                <div class="pet-card">
                    <img src="https://images.unsplash.com/photo-1592194996308-7b43878e84a6?q=80&w=200">
                    <h4>Smiski</h4>
                    <p>British Short Hair</p>
                    <a href="pet-checkin.html" class="checkin-btn">Pet Check-in</a>
                </div>
                </div>

            <div class="section-title">
                <i class="fa-solid fa-bookmark"></i>
                <strong>Saved Favourite Pets</strong>
            </div>

            <div class="grid-container">
                <div class="pet-card">
                    <img src="https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?q=80&w=200">
                    <h4>Tabby</h4>
                    <p>British Short Hair</p>
                </div>
                <div class="pet-card">
                    <img src="https://images.unsplash.com/photo-1583337130417-3346a1be7dee?q=80&w=200">
                    <h4>Mochi</h4>
                    <p>White Ragdoll</p>
                </div>
                <div class="pet-card">
                    <img src="https://images.unsplash.com/photo-1585110396000-c9ffd4e4b308?q=80&w=200">
                    <h4>Tabby</h4>
                    <p>Rabbit</p>
                </div>
                <div class="pet-card">
                    <img src="https://images.unsplash.com/photo-1517849845537-4d257902454a?q=80&w=200">
                    <h4>Tobi</h4>
                    <p>Corgi Puppy</p>
                </div>
            </div>
        </div>
    </main>

</body>
</html>