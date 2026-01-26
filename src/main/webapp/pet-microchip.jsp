<%-- 
    Document   : pet-microchip
    Created on : 27 Jan 2026, 3:53:31 am
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

        body { 
            background-color: var(--brand-maroon); 
            margin: 0; 
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; 
        }

        /* --- Standardized Navbar --- */
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
            gap: 20px;
            margin: 0;
            padding: 0;
        }

        .navbar nav ul li a {
            color: white;
            text-decoration: none;
            font-size: 15px;
            padding: 8px 15px;
            border-radius: 20px;
            transition: 0.3s;
        }

        .navbar nav ul li a:hover, .nav-link-active { background-color: var(--navbar-hover); }

        .user-profile-icon a { font-size: 24px; text-decoration: none; color: white; }

        /* --- Content Styling --- */
        .page-wrapper { background-color: #FFF8DC; min-height: 100vh; padding: 40px 20px; }
        
        .legal-container { 
            background-color: white; 
            border-radius: 40px; 
            max-width: 1000px; 
            margin: 0 auto; 
            padding: 30px; 
            box-shadow: 0 10px 30px rgba(0,0,0,0.05); 
        }

        /* Back Button Style */
        .back-nav { margin-bottom: 20px; }
        .btn-back {
            display: inline-flex;
            align-items: center;
            text-decoration: none;
            color: var(--maroon);
            font-weight: bold;
            font-size: 14px;
            transition: 0.3s;
            background: #fdf0f1;
            padding: 8px 18px;
            border-radius: 15px;
            border: 1px solid #f0d0d5;
        }
        .btn-back:hover { background: var(--maroon); color: white; }
        .btn-back span { margin-right: 8px; font-size: 18px; }

        .legal-header { text-align: center; margin-bottom: 25px; }
        .legal-header h2 { font-size: 28px; color: #000; margin: 0; }

        .legal-grid { display: grid; grid-template-columns: 1fr 1.2fr; gap: 25px; }
        .data-card { background-color: #fcf1f3; border-radius: 25px; padding: 30px; border: 1px solid #f0d0d5; }
        .data-list { list-style: none; padding: 0; }
        .data-list li { 
            margin-bottom: 18px; 
            font-size: 15px; 
            border-bottom: 1px solid rgba(0,0,0,0.05); 
            padding-bottom: 8px; 
            color: var(--text-dark); 
        }

        .btn-print { 
            background-color: var(--btn-maroon); 
            color: white; 
            border: none; 
            padding: 12px 40px; 
            border-radius: 12px; 
            font-weight: bold; 
            cursor: pointer; 
            display: block; 
            margin: 20px auto 0; 
            transition: 0.3s;
        }
        .btn-print:hover { opacity: 0.9; transform: scale(1.02); }

        .compliance-column { display: flex; flex-direction: column; gap: 15px; }
        .alert-box { border-radius: 20px; padding: 20px; display: flex; gap: 15px; align-items: flex-start; }
        .alert-pink { background-color: var(--light-pink); border-left: 5px solid var(--maroon); }
        .alert-yellow { background-color: var(--alert-yellow); flex-direction: column; border: 1px solid #fde047; }
        .alert-actions { display: flex; gap: 10px; margin-top: 10px; width: 100%; }
        
        .btn-reg, .btn-report { border: none; padding: 12px; border-radius: 12px; font-weight: bold; cursor: pointer; flex: 1; text-align: center; text-decoration: none; }
        .btn-reg { background-color: var(--btn-maroon); color: white; }
        .btn-report { background-color: #d32f2f; color: white; }

        /* Modal */
        .modal-overlay { display: none; position: fixed; z-index: 3000; left: 0; top: 0; width: 100%; height: 100%; background: rgba(0,0,0,0.7); backdrop-filter: blur(5px); align-items: center; justify-content: center; }
        .modal-content { background: white; padding: 30px; border-radius: 30px; width: 90%; max-width: 500px; position: relative; animation: zoomIn 0.3s ease; }
        @keyframes zoomIn { from { transform: scale(0.9); opacity: 0; } to { transform: scale(1); opacity: 1; } }
        .close-modal { position: absolute; right: 20px; top: 15px; font-size: 24px; cursor: pointer; }
        .form-group { margin-bottom: 15px; }
        .form-group label { display: block; margin-bottom: 5px; font-weight: bold; font-size: 14px; }
        .form-group input { width: 100%; padding: 12px; border: 1px solid #ddd; border-radius: 10px; box-sizing: border-box; }
        .btn-submit { background: var(--maroon); color: white; border: none; padding: 14px; width: 100%; border-radius: 12px; font-weight: bold; cursor: pointer; margin-top: 10px; }

        @media (max-width: 768px) { 
            .legal-grid { grid-template-columns: 1fr; } 
            .navbar nav { display: none; } 
        }

        /* Print Specific Styling */
        @media print {
            .navbar, .btn-back, .compliance-column, .btn-print, .btn-reg { display: none !important; }
            .page-wrapper { padding: 0; background: white; }
            .legal-container { box-shadow: none; border: 2px solid #000; }
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
            <div class="back-nav">
                <a href="petbrowse.html" class="btn-back">
                    <span>←</span> Back to Pet Browser
                </a>
            </div>

            <div class="legal-header">
                <h2 id="pageTitle">Microchip & Legal Identity</h2>
            </div>

            <div class="legal-grid">
                <div class="data-card">
                    <h3 style="text-align: center; margin-top: 0; color: var(--maroon);">Pet Data & Implant Details</h3>
                    <ul class="data-list" id="displayList">
                        </ul>
                    <button class="btn-print" onclick="window.print()">Print ID Card</button>
                </div>

                <div class="compliance-column">
                    <div class="alert-box alert-pink">
                        <span style="font-size: 24px;">🚨</span>
                        <p><strong>Sarawak Compliance:</strong> This microchip is mandatory to track ownership and anti-rabies vaccination status under local council regulations.</p>
                    </div>

                    <div class="alert-box alert-yellow">
                        <p><strong>ACTION REQUIRED:</strong> This pet is currently registered to PUSAK KAMEK. You MUST transfer the registration to your name upon adoption.</p>
                        <div class="alert-actions">
                            <button class="btn-reg" onclick="toggleModal('regModal', true)">Transfer Ownership</button>
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
            <h2 style="color: var(--maroon); margin-top: 0;">Ownership Transfer</h2>
            <p style="font-size: 14px; color: #666;">Apply to update the national microchip database with your contact information.</p>
            
            <form id="transferForm" onsubmit="handleFormSubmit(event)">
                <div class="form-group">
                    <label>Microchip ID</label>
                    <input type="text" id="formMicrochipID" readonly style="background: #f5f5f5; cursor: not-allowed;">
                </div>
                <div class="form-group">
                    <label>New Owner Full Name (as per IC)</label>
                    <input type="text" placeholder="Enter full name" required>
                </div>
                <div class="form-group">
                    <label>Contact Number</label>
                    <input type="tel" placeholder="01X-XXXXXXX" required>
                </div>
                <button type="submit" class="btn-submit">Confirm Transfer Request</button>
            </form>

            <div id="successMsg" style="display: none; text-align: center; padding: 20px;">
                <div style="font-size: 50px; margin-bottom: 10px;">✅</div>
                <h3>Request Received!</h3>
                <p>Our team will process the transfer and notify you via email within 3-5 working days.</p>
                <button class="btn-submit" onclick="toggleModal('regModal', false)">Close</button>
            </div>
        </div>
    </div>

    <script>
        window.onload = function() {
            // Get data from the URL parameters
            const urlParams = new URLSearchParams(window.location.search);
            const name = urlParams.get('name') || "Pet";
            const breed = urlParams.get('breed') || "Domestic Breed";
            const id = urlParams.get('id') || "982 000 000 000 000";

            // Update Page Header
            document.getElementById('pageTitle').innerText = `Legal Identity: ${name}`;
            
            // Update Modal Field
            document.getElementById('formMicrochipID').value = id;

            // Display the Data List
            document.getElementById('displayList').innerHTML = `
                <li><strong>Pet Name:</strong> ${name}</li>
                <li><strong>Breed:</strong> ${breed}</li>
                <li><strong>Microchip ID:</strong> <span style="font-family: monospace; font-weight: bold;">${id}</span></li>
                <li><strong>Implanted by:</strong> Dr. Adam, VetCare Kuching</li>
                <li><strong>Implant Date:</strong> 12/03/2025</li>
                <li><strong>Current Status:</strong> Active / Registered</li>
                <li><strong>Registry:</strong> PUSAK-KAMEK Rescue Database</li>
            `;
        };

        function toggleModal(modalId, show) {
            const modal = document.getElementById(modalId);
            modal.style.display = show ? "flex" : "none";
            // Prevent scrolling when modal is open
            document.body.style.overflow = show ? "hidden" : "auto";
        }

        function handleFormSubmit(e) {
            e.preventDefault();
            // Hide form and show success message
            document.getElementById('transferForm').style.display = "none";
            document.getElementById('successMsg').style.display = "block";
        }

        // Close modal if user clicks on the dark overlay
        window.onclick = function(event) {
            if (event.target.className === 'modal-overlay') {
                toggleModal('regModal', false);
            }
        }
    </script>
</body>
</html>