<%-- 
    Document   : admin-microreg
    Created on : 27 Jan 2026, 3:46:51 am
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Microchip Data - Pusak Kamek Admin</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;800&display=swap" rel="stylesheet">
    <style>
        :root {
            --brand-maroon: #7a0019;
            --brand-maroon-light: #96102b;
            --shadow: 0 4px 20px rgba(0,0,0,0.15);
            --light-grey: #f4f4f4;
        }

        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: radial-gradient(circle at top, var(--brand-maroon-light), var(--brand-maroon));
            background-attachment: fixed;
            color: white;
            min-height: 100vh;
        }

        /* --- CONSISTENT NAVBAR --- */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 5%;
            height: 80px;
            background: white; 
            position: fixed;
            top: 0; left: 0; width: 100%;
            box-sizing: border-box;
            z-index: 1000;
            box-shadow: var(--shadow);
        }

        .logo-section { display: flex; align-items: center; gap: 12px; color: var(--brand-maroon); }
        .logo-circle { background: var(--brand-maroon); color: white; width: 35px; height: 35px; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-weight: 800; }
        .logo-text { font-weight: 800; line-height: 1.1; font-size: 18px; }

        .nav-links { display: flex; list-style: none; gap: 5px; margin: 0; padding: 0; }
        .nav-links a { color: #555; text-decoration: none; font-weight: 600; font-size: 14px; padding: 10px 18px; border-radius: 10px; transition: 0.3s; }
        .nav-links a:hover { background: #f8f8f8; color: var(--brand-maroon); }
        .nav-active { background: var(--brand-maroon) !important; color: white !important; }

        .admin-profile { display: flex; align-items: center; gap: 10px; color: var(--brand-maroon); font-weight: 700; }
        .profile-icon { width: 40px; height: 40px; background: #eee; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-size: 18px; }

        /* --- HEADER & BACK BUTTON --- */
        .page-header {
            max-width: 1100px;
            width: 90%;
            margin: 120px auto 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        h1 { margin: 0; font-size: 28px; font-weight: 800; }

        .back-btn {
            background: white;
            color: var(--brand-maroon);
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 12px;
            font-weight: 600;
            font-size: 14px;
            display: flex;
            align-items: center;
            gap: 8px;
            transition: 0.3s;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        }

        .back-btn:hover { background: #fdf0f1; transform: translateX(-5px); }

        /* --- DASHBOARD CARD --- */
        .dashboard-card {
            background: white;
            width: 90%;
            max-width: 1100px;
            margin: 0 auto 50px;
            border-radius: 30px;
            padding: 40px;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 40px;
            box-shadow: var(--shadow);
            color: #333;
            box-sizing: border-box;
        }

        .left-panel, .right-panel { display: flex; flex-direction: column; }

        h3 { color: var(--brand-maroon); margin-top: 0; font-weight: 800; font-size: 20px; border-bottom: 2px solid #f0f0f0; padding-bottom: 10px; margin-bottom: 20px; }
        .section-subtitle { color: #777; font-size: 12px; font-weight: 800; text-transform: uppercase; margin-bottom: 15px; letter-spacing: 1px; }

        .pet-info-box {
            background: #fff5f6;
            padding: 20px;
            border-radius: 20px;
            margin-bottom: 25px;
            border: 1px solid #fce4e6;
        }

        .pet-info-box p { margin: 5px 0; font-weight: 600; color: var(--brand-maroon); }
        .pet-info-box span { color: #555; font-weight: 400; }

        .form-group { margin-bottom: 15px; }
        label { display: block; font-weight: 700; margin-bottom: 6px; font-size: 13px; color: #555; }
        
        input {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ddd;
            border-radius: 12px;
            box-sizing: border-box;
            font-family: inherit;
            outline: none;
            transition: 0.2s;
        }

        input:focus { border-color: var(--brand-maroon); background: #fffcfc; }
        .status-input { background: #f9f9f9; color: #777; font-weight: 600; }

        .btn-process {
            background: var(--brand-maroon);
            color: white;
            border: none;
            width: 100%;
            padding: 16px;
            border-radius: 15px;
            font-weight: 800;
            font-size: 16px;
            margin-top: auto; /* Pushes to bottom of flex container */
            cursor: pointer;
            transition: 0.3s;
        }

        .btn-process:hover { background: #5a0012; transform: translateY(-2px); box-shadow: 0 5px 15px rgba(122, 0, 25, 0.3); }

        @media (max-width: 850px) {
            .dashboard-card { grid-template-columns: 1fr; }
            .nav-links { display: none; }
        }
    </style>
</head>
<body>

    <header class="navbar">
        <div class="logo-section">
            <div class="logo-circle">PK</div>
            <div class="logo-text">PUSAK KAMEK<br><small style="font-weight: 400; font-size: 10px; color: #777;">ADMIN PANEL</small></div>
        </div>

        <nav>
            <ul class="nav-links">
                <li><a href="admin-dashboard.html">Dashboard</a></li>
                <li><a href="#">Stories</a></li>
                <li><a href="#" class="nav-active">Pets</a></li>
                <li><a href="adopt-history.html">Adoptions</a></li>
                <li><a href="#">Donations</a></li>
                <li><a href="#">Users</a></li>
            </ul>
        </nav>

        <div class="admin-profile">
            <span>Admin</span>
            <div class="profile-icon">👤</div>
        </div>
    </header>

    <div class="page-header">
        <h1>Microchip Registration</h1>
        <a href="admin-index.html" class="back-btn">
            <i class="fa-solid fa-arrow-left"></i> Back to Dashboard
        </a>
    </div>

    <div class="dashboard-card">
        <div class="left-panel">
            <h3>Pet & Owner Data</h3>
            
            <div class="pet-info-box">
                <p>Pet Name: <span>Ciko</span></p>
                <p>Microchip ID: <span>982 000 412</span></p>
            </div>

            <div class="section-subtitle">Adopter Submitted Details</div>
            
            <div class="form-group">
                <label>Full Name</label>
                <input type="text" value="Ahmad Izwan bin Ali">
            </div>
            <div class="form-group">
                <label>Address</label>
                <input type="text" value="No 12, Lorong 4, Kuching, Sarawak">
            </div>
            <div class="form-group">
                <label>Phone Number</label>
                <input type="text" value="012-8884433">
            </div>
            <div class="form-group">
                <label>Email Address</label>
                <input type="text" value="izwan@email.com">
            </div>
        </div>

        <div class="right-panel">
            <h3>Shelter Processing</h3>
            
            <div class="form-group">
                <label>Registration Status</label>
                <input type="text" class="status-input" value="Received (Ready for Submission)" readonly>
            </div>
            
            <div class="form-group">
                <label>Date Submitted to Authority</label>
                <input type="date">
            </div>

            <div class="form-group">
                <label>Current Status (Lost/Found)</label>
                <input type="text" placeholder="Active / Safe">
            </div>

            <div style="flex-grow: 1;"></div> <button class="btn-process">Update & Finalize Record</button>
        </div>
    </div>

</body>
</html>