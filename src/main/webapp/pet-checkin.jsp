<%-- 
    Document   : pet-checkin
    Created on : 27 Jan 2026, 3:52:55 am
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pusak Kamek - Microchip & Legal Identity</title>
    <link rel="stylesheet" href="style.css">
    <style>
        :root {
            --maroon: #7a0019;
            --brand-maroon: #7a0019;
            --light-pink: #fce8eb;
            --alert-yellow: #fef9c3;
            --btn-maroon: #912e3f;
            --text-dark: #333;
            --navbar-hover: rgba(0, 0, 0, 0.2);
        }

        body { background-color: var(--brand-maroon); margin: 0; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; }

        /* --- Standardized Navbar (Updated) --- */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 5%;
            background-color: var(--brand-maroon);
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

        .navbar nav ul li a:hover { background-color: var(--navbar-hover); }
        .nav-link-active { background-color: var(--navbar-hover); }

        .user-profile-icon a {
            font-size: 24px;
            text-decoration: none;
            color: white;
        }

        /* --- Page Content Styles --- */
        .page-wrapper { background-color: #FFF8DC; min-height: 100vh; padding: 40px 20px; }
        .legal-container { background-color: white; border-radius: 40px; max-width: 1000px; margin: 0 auto; padding: 30px; box-shadow: 0 10px 30px rgba(0,0,0,0.05); }
        .legal-header { text-align: center; margin-bottom: 25px; }
        .legal-header h2 { font-size: 24px; color: #000; margin: 0; }

        .legal-grid { display: grid; grid-template-columns: 1fr 1.2fr; gap: 20px; }
        .data-card { background-color: #fcf1f3; border-radius: 20px; padding: 25px; border: 1px solid #f0d0d5; }
        .data-list { list-style: none; padding: 0; }
        .data-list li { margin-bottom: 20px; font-size: 15px; border-bottom: 1px solid rgba(0,0,0,0.05); padding-bottom: 5px; color: var(--text-dark); }

        .btn-print { background-color: var(--btn-maroon); color: white; border: none; padding: 10px 40px; border-radius: 12px; font-weight: bold; cursor: pointer; display: block; margin: 20px auto 0; }

        .compliance-column { display: flex; flex-direction: column; gap: 15px; }
        .alert-box { border-radius: 20px; padding: 15px 20px; display: flex; gap: 15px; align-items: flex-start; }
        .alert-pink { background-color: var(--light-pink); }
        .alert-yellow { background-color: var(--alert-yellow); flex-direction: column; border: 1px solid #fde047; }
        .alert-actions { display: flex; gap: 10px; margin-top: 10px; width: 100%; }
        
        .btn-reg, .btn-report { border: none; padding: 12px; border-radius: 12px; font-weight: bold; cursor: pointer; flex: 1; text-align: center; text-decoration: none; }
        .btn-reg { background-color: var(--btn-maroon); color: white; }
        .btn-report { background-color: #d32f2f; color: white; }

        /* Modal Styles */
        .modal-overlay { display: none; position: fixed; z-index: 3000; left: 0; top: 0; width: 100%; height: 100%; background: rgba(0,0,0,0.7); backdrop-filter: blur(5px); align-items: center; justify-content: center; }
        .modal-content { background: white; padding: 30px; border-radius: 30px; width: 90%; max-width: 500px; position: relative; animation: zoomIn 0.3s ease; }
        @keyframes zoomIn { from { transform: scale(0.9); opacity: 0; } to { transform: scale(1); opacity: 1; } }
        .close-modal { position: absolute; right: 20px; top: 15px; font-size: 24px; cursor: pointer; }
        .form-group { margin-bottom: 15px; }
        .form-group label { display: block; margin-bottom: 5px; font-weight: bold; font-size: 14px; }
        .form-group input { width: 100%; padding: 10px; border: 1px solid #ddd; border-radius: 8px; box-sizing: border-box; }
        .btn-submit { background: var(--maroon); color: white; border: none; padding: 12px; width: 100%; border-radius: 10px; font-weight: bold; cursor: pointer; }

        @media (max-width: 768px) { 
            .legal-grid { grid-template-columns: 1fr; } 
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
                <li><a href="petbrowse.html" class="nav-link-active">Pet</a></li>
                <li><a href="adopt.html">Adopt</a></li>
                <li><a href="foster-details.html">Foster</a></li>
                <li><a href="donation.html">Donate</a></li>
                <li><a href="volunteer.html">Volunteer</a></li>
            </ul>
        </nav>
        <div class="user-profile-icon"><a href="profile.html">👤</a></div>
    </header>

    <main class="page-wrapper">
        <div class="legal-container">
            <div class="legal-header">
                <h2 id="pageTitle">Microchip & Legal Identity</h2>
            </div>

            <div class="legal-grid">
                <div class="data-card">
                    <h3 style="text-align: center; margin-top: 0;">Pet Data & Implant Details</h3>
                    <ul class="data-list" id="displayList">
                        </ul>
                    <button class="btn-print" onclick="window.print()">Print Card</button>
                </div>

                <div class="compliance-column">
                    <div class="alert-box alert-pink">
                        <span>🚨</span>
                        <p><strong>Sarawak Compliance:</strong> This microchip is mandatory to track ownership and ensure compliance with anti-rabies vaccination within the state.</p>
                    </div>

                    <div class="alert-box alert-yellow">
                        <div style="display: flex; gap: 15px;">
                            <span>⚠️</span>
                            <p><strong>ACTION REQUIRED:</strong> The microchip is currently registered to our shelter. <strong>You MUST transfer the registration</strong> to your name.</p>
                        </div>
                        <div class="alert-actions">
                            <button class="btn-reg" onclick="toggleModal('regModal', true)">Microchip Registration</button>
                            <a href="pet-lost.html" class="btn-report">⚠️ Report Lost</a>
                        </div>
                    </div>
                </div> 
            </div> 
        </div> 
    </main>

    <div id="regModal" class="modal-overlay">
        <div class="modal-content">
            <span class="close-modal" onclick="toggleModal('regModal', false)">&times;</span>
            <h2 style="color: var(--maroon); margin-top: 0;">Transfer Ownership</h2>
            <form id="transferForm" onsubmit="handleFormSubmit(event)">
                <div class="form-group">
                    <label>Microchip ID</label>
                    <input type="text" id="formMicrochipID" readonly style="background: #eee;">
                </div>
                <div class="form-group">
                    <label>Full Name (as per IC)</label>
                    <input type="text" placeholder="Your Name" required>
                </div>
                <div class="form-group">
                    <label>Email Address</label>
                    <input type="email" placeholder="example@email.com" required>
                </div>
                <button type="submit" class="btn-submit">Confirm Transfer</button>
            </form>
            <div id="successMsg" style="display: none; text-align: center; padding: 20px;">
                <div style="font-size: 50px;">✅</div>
                <h3>Request Submitted!</h3>
                <p>Pusak Kamek will process your transfer within 3 working days.</p>
                <button class="btn-submit" onclick="toggleModal('regModal', false)">Close</button>
            </div>
        </div>
    </div>

    <script>
        window.onload = function() {
            const urlParams = new URLSearchParams(window.location.search);
            const name = urlParams.get('name') || "Ciko";
            const breed = urlParams.get('breed') || "Domestic Short Hair";
            const id = urlParams.get('id') || "982 000 412 778 221";

            document.getElementById('pageTitle').innerText = `Microchip Identity: ${name}`;
            document.getElementById('formMicrochipID').value = id;

            document.getElementById('displayList').innerHTML = `
                <li><strong>Pet Name :</strong> ${name}</li>
                <li><strong>Breed :</strong> ${breed}</li>
                <li><strong>Microchip ID:</strong> ${id}</li>
                <li><strong>Implanted by:</strong> Dr. Adam, VetCare Kuching</li>
                <li><strong>Implant Date:</strong> 12/03/2025</li>
                <li><strong>Registered Org:</strong> PUSAK-KAMEK</li>
                <li><strong>Next Scan:</strong> March 2026</li>
            `;
        };

        function toggleModal(modalId, show) {
            const modal = document.getElementById(modalId);
            modal.style.display = show ? "flex" : "none";
            if(!show) {
                document.getElementById('transferForm').style.display = "block";
                document.getElementById('successMsg').style.display = "none";
            }
        }

        function handleFormSubmit(e) {
            e.preventDefault();
            document.getElementById('transferForm').style.display = "none";
            document.getElementById('successMsg').style.display = "block";
        }

        window.onclick = function(event) {
            if (event.target.className === 'modal-overlay') {
                toggleModal('regModal', false);
            }
        }
    </script>
</body>
</html>