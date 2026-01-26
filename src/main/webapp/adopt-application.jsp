<%-- 
    Document   : adopt-application
    Created on : 27 Jan 2026, 3:47:57 am
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pusak Kamek - Adoption Application</title>
    <link rel="stylesheet" href="style.css">
    <style>
        :root {
            --brand-maroon: #7a0019;
            --white: #ffffff;
            --page-bg: #FFF8DC; /* Your requested color */
        }

        body {
            background-color: var(--page-bg);
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
            gap: 25px;
            margin: 0;
            padding: 0;
        }

        .navbar nav ul li a {
            color: white;
            text-decoration: none;
            font-weight: 500;
            font-size: 16px;
            padding: 8px 16px;
            border-radius: 20px;
            transition: 0.3s;
        }

        .nav-link-active {
            background-color: rgba(0, 0, 0, 0.2);
        }

        .user-profile-icon a {
            font-size: 24px;
            text-decoration: none;
            color: white;
            cursor: pointer;
        }

        /* --- Form Container Styles --- */
        .main-wrapper {
            padding: 60px 20px;
            display: flex;
            justify-content: center;
        }

        .form-container {
            background-color: white;
            border-radius: 30px; 
            width: 100%;
            max-width: 600px;
            padding: 40px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.08);
        }

        .form-container h1 {
            text-align: center;
            color: var(--brand-maroon);
            font-size: 28px;
            margin-bottom: 30px;
            margin-top: 0;
        }

        .adoption-form {
            display: flex;
            flex-direction: column;
            gap: 18px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            gap: 6px;
        }

        .form-group label {
            font-size: 15px;
            font-weight: 600;
            color: var(--brand-maroon);
            margin-left: 10px;
        }

        .form-group input {
            padding: 12px 20px;
            border: 2px solid var(--brand-maroon);
            border-radius: 25px; 
            font-size: 15px;
            outline: none;
            transition: all 0.3s ease;
        }

        .form-group input:focus {
            background-color: #fff9f9;
            border-color: #912e3f;
        }

        .submit-wrapper {
            display: flex;
            justify-content: center;
            margin-top: 15px;
        }

        .btn-submit {
            background-color: var(--brand-maroon);
            color: white;
            border: none;
            padding: 12px 60px;
            border-radius: 25px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn-submit:hover {
            background-color: #912e3f;
            transform: scale(1.02);
        }

        @media (max-width: 768px) {
            .navbar nav { display: none; }
            .form-container { padding: 25px; }
        }
    </style>
</head>
<body>

    <header class="navbar">
        <div class="logo-text">
            PUSAK KAMEK<br>
            <small>Rescue - Rehome - Rebuild</small>
        </div>
        <nav>
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><a href="stories.html">Stories</a></li>
                <li><a href="petbrowse.html">Pet</a></li>
                <li><a href="adopt.html" class="nav-link-active">Adopt</a></li>
                <li><a href="foster-details.html">Foster</a></li>
                <li><a href="donation.html">Donate</a></li>
                <li><a href="volunteer.html">Volunteer</a></li>
            </ul>
        </nav>
        <div class="user-profile-icon">
            <a href="profile.html">👤</a>
        </div>
    </header>

    <div class="main-wrapper">
        <div class="form-container">
            <h1>Adoption Application</h1>
            <form class="adoption-form">
                
                <div class="form-group">
                    <label for="fullName">Full Name</label>
                    <input type="text" id="fullName" placeholder="Enter your full name" required>
                </div>

                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" placeholder="example@email.com" required>
                </div>

                <div class="form-group">
                    <label for="phone">Phone Number</label>
                    <input type="tel" id="phone" placeholder="e.g. +60123456789" required>
                </div>

                <div class="form-group">
                    <label for="reason">Why do you want to adopt this pet?</label>
                    <input type="text" id="reason" placeholder="Briefly share your motivation" required>
                </div>

                <div class="form-group">
                    <label for="experience">Experience with pets</label>
                    <input type="text" id="experience" placeholder="Have you owned pets before?" required>
                </div>

                <div class="submit-wrapper">
                    <button type="submit" class="btn-submit">Submit Application</button>
                </div>

            </form>
        </div>
    </div>

</body>
</html>
