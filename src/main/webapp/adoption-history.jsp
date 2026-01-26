<%-- 
    Document   : adoption-history
    Created on : 27 Jan 2026, 3:48:37 am
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pusak Kamek - My Adoption History</title>
    <link rel="stylesheet" href="style.css">
    <style>
        :root {
            --maroon: #7a0019;
            --page-bg: #FFF8DC; 
            --status-pending: #f39c12;
            --status-approved: #27ae60;
        }

        body { 
            background-color: var(--page-bg); 
            margin: 0; 
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; 
            min-height: 100vh;
        }

        /* --- Navbar --- */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 5%;
            background-color: var(--maroon);
            color: white;
        }

        .logo-text { font-weight: bold; line-height: 1.2; font-size: 18px; }
        .logo-text small { font-weight: normal; font-size: 12px; }

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
            font-size: 16px;
            padding: 8px 16px;
            border-radius: 20px;
            transition: 0.3s;
        }

        .nav-link-active { background-color: rgba(0, 0, 0, 0.2); }
        .user-profile-icon a { font-size: 24px; text-decoration: none; color: white; }

        /* --- Content Layout --- */
        .wrapper { 
            padding: 40px 5%; 
            display: flex; 
            flex-direction: column; 
            align-items: center; 
        }

        .header-section {
            max-width: 900px; 
            width: 100%; 
            margin-bottom: 20px;
        }

        /* --- Back Button Style --- */
        .back-btn-container {
            max-width: 900px;
            width: 100%;
            margin-bottom: 20px;
        }

        .btn-back {
            display: inline-flex;
            align-items: center;
            text-decoration: none;
            color: var(--maroon);
            font-weight: bold;
            font-size: 14px;
            border: 2px solid var(--maroon);
            padding: 8px 18px;
            border-radius: 20px;
            transition: 0.3s;
        }

        .btn-back:hover {
            background-color: var(--maroon);
            color: white;
        }

        h1 { color: #000; font-size: 32px; margin: 0; }
        .subtitle { color: #666; margin-top: 5px; }

        .table-container { 
            background: white; 
            border-radius: 40px; 
            width: 100%; 
            max-width: 900px; 
            padding: 35px; 
            box-shadow: 0 10px 30px rgba(0,0,0,0.05);
        }

        table { width: 100%; border-collapse: collapse; }
        th { 
            text-align: left; 
            color: var(--maroon); 
            font-size: 16px; 
            padding-bottom: 20px; 
            border-bottom: 2px solid #f9f9f9;
        }

        td { padding: 20px 0; border-bottom: 1px solid #f0f0f0; vertical-align: middle; }

        .status-badge {
            padding: 6px 18px;
            border-radius: 20px;
            font-size: 13px;
            font-weight: bold;
            display: inline-block;
        }
        .pending { background: #fff4e5; color: var(--status-pending); }
        .approved { background: #e8f5e9; color: var(--status-approved); }

        .btn-checkin { 
            background: var(--maroon); 
            color: white; 
            border: none; 
            padding: 10px 25px; 
            border-radius: 20px; 
            font-weight: bold; 
            text-decoration: none;
            font-size: 13px;
            transition: 0.3s;
            display: inline-block;
        }
        .btn-checkin:hover { background: #912e3f; }

        .btn-disabled {
            background: #eee;
            color: #aaa;
            padding: 10px 25px;
            border-radius: 20px;
            font-size: 13px;
            cursor: not-allowed;
            display: inline-block;
        }

        @media (max-width: 768px) {
            .navbar nav { display: none; }
            .table-container { padding: 20px; }
            th, td { font-size: 13px; }
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
                <li><a href="adopt.html" class="nav-link-active">Adopt</a></li>
                <li><a href="foster-details.html">Foster</a></li>
                <li><a href="donation.html">Donate</a></li>
                <li><a href="volunteer.html">Volunteer</a></li>
            </ul>
        </nav>
        <div class="user-profile-icon"><a href="profile.html">👤</a></div>
    </header>

    <div class="wrapper">
        <div class="back-btn-container">
            <a href="adopt.html" class="btn-back">← Back to Adopt</a>
        </div>

        <div class="header-section">
            <h1>My Adoption History</h1>
            <p class="subtitle">Track your applications and manage your pets.</p>
        </div>
        
        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>Pet Name</th>
                        <th>Type</th>
                        <th>Application Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><strong>Ciko</strong></td>
                        <td>Cat (BLH)</td>
                        <td><span class="status-badge approved">Approved</span></td>
                        <td>
                            <a href="pet-checkin.html" class="btn-checkin">Submit Pet Update</a>
                        </td>
                    </tr>

                    <tr>
                        <td><strong>Mochi</strong></td>
                        <td>Cat (Local)</td>
                        <td><span class="status-badge pending">Pending Review</span></td>
                        <td>
                            <span class="btn-disabled">Waiting for Approval</span>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

</body>
</html>
