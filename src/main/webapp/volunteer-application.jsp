<%-- 
    Document   : volunteer-application
    Created on : 27 Jan 2026, 3:56:07 am
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pusak Kamek - Volunteer Application</title>
    <link rel="stylesheet" href="style.css">
    <style>
        :root {
            --brand-maroon: #7a0019;
            --white: #ffffff;
            --soft-pink: #FFF0F1;
        }

        /* --- Global Reset & Typography --- */
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size: 16px;
            background-color: var(--brand-maroon); /* Maroon background as per image */
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

        /* Highlight for active page */
        .nav-link-active {
            background-color: rgba(0, 0, 0, 0.2);
        }

        .user-profile-icon a {
            font-size: 24px;
            text-decoration: none;
            color: white;
            cursor: pointer;
        }

        /* --- Application Form Layout --- */
        .page-wrapper {
            padding: 40px 5%;
            display: flex;
            justify-content: center;
        }

        .form-container {
            background-color: var(--white);
            width: 100%;
            max-width: 900px;
            padding: 40px;
            border-radius: 40px;
            text-align: center;
        }

        .form-container h1 {
            color: #000;
            font-size: 32px;
            margin-bottom: 5px;
        }

        .form-container p {
            color: #333;
            margin-bottom: 30px;
        }

        /* Form Grid */
        .application-form {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
            text-align: left;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            gap: 5px;
        }

        .full-width {
            grid-column: span 2;
        }

        label {
            font-weight: 600;
            color: #000;
        }

        input[type="text"],
        input[type="email"],
        input[type="number"],
        input[type="tel"],
        textarea {
            padding: 12px 15px;
            border: 2px solid var(--brand-maroon);
            border-radius: 15px;
            font-size: 16px;
            font-family: inherit;
            outline: none;
        }

        /* Availability Section */
        .availability-options {
            display: flex;
            gap: 15px;
            margin-top: 5px;
        }

        .checkbox-pill {
            display: flex;
            align-items: center;
            gap: 8px;
            border: 2px solid var(--brand-maroon);
            padding: 8px 15px;
            border-radius: 20px;
            cursor: pointer;
        }

        /* Confirmation Checkbox */
        .confirmation-row {
            grid-column: span 2;
            display: flex;
            align-items: center;
            gap: 10px;
            border: 2px solid var(--brand-maroon);
            padding: 10px 15px;
            border-radius: 15px;
            font-size: 14px;
        }

        /* Form Actions */
        .form-actions {
            grid-column: span 2;
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 20px;
        }

        .btn-submit {
            background-color: var(--brand-maroon);
            color: white;
            border: none;
            padding: 15px 40px;
            border-radius: 30px;
            font-weight: bold;
            font-size: 18px;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn-reset {
            background-color: #b33c4a; /* Lighter maroon for reset */
            color: white;
            border: none;
            padding: 15px 60px;
            border-radius: 30px;
            font-weight: bold;
            font-size: 18px;
            cursor: pointer;
        }

        .btn-submit:hover { opacity: 0.9; }

        @media (max-width: 768px) {
            .application-form { grid-template-columns: 1fr; }
            .full-width, .confirmation-row, .form-actions { grid-column: span 1; }
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
                <li><a href="adopt.html">Adopt</a></li>
                <li><a href="foster-details.html">Foster</a></li>
                <li><a href="donation.html">Donate</a></li>
                <li><a href="volunteer.html" class="nav-link-active">Volunteer</a></li>
            </ul>
        </nav>
        <div class="user-profile-icon">
            <a href="profile.html">👤</a>
        </div>
    </header>

    <main class="page-wrapper">
        <div class="form-container">
            <h1>Apply to be a Volunteer</h1>
            <p>Tell us about your availability and experience. We will contact you within 5 working days</p>

            <form class="application-form">
                <div class="form-group">
                    <label>Full Name *</label>
                    <input type="text" placeholder="e.g. Yasmine" required>
                </div>
                <div class="form-group">
                    <label>Age *</label>
                    <input type="number" placeholder="e.g. 18" required>
                </div>

                <div class="form-group">
                    <label>Email *</label>
                    <input type="email" placeholder="you@gmail.com" required>
                </div>
                <div class="form-group">
                    <label>Phone *</label>
                    <input type="tel" placeholder="012-3456789" required>
                </div>

                <div class="form-group full-width">
                    <label>Address</label>
                    <input type="text" placeholder="Enter your current address">
                </div>

                <div class="form-group full-width">
                    <label>Availability (check all that apply)</label>
                    <div class="availability-options">
                        <label class="checkbox-pill"><input type="checkbox"> Weekdays</label>
                        <label class="checkbox-pill"><input type="checkbox"> Weekends</label>
                        <label class="checkbox-pill"><input type="checkbox"> Flexible</label>
                    </div>
                </div>

                <div class="form-group full-width">
                    <label>Experience with Animals</label>
                    <textarea placeholder="Describe any past experience.." rows="3"></textarea>
                </div>

                <div class="confirmation-row">
                    <input type="checkbox" id="confirm" required>
                    <label for="confirm">I confirm that the information is true and i agree to a background check if required</label>
                </div>

                <div class="form-actions">
                    <button type="submit" class="btn-submit">Submit Application</button>
                    <button type="reset" class="btn-reset">Reset</button>
                </div>
            </form>
        </div>
    </main>

</body>
</html>
