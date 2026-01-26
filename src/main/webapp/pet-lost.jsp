<%-- 
    Document   : pet-lost
    Created on : 27 Jan 2026, 3:53:15 am
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Emergency: Report Lost Pet - Pusak Kamek</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            background-color: #7a0019; /* Emergency Maroon */
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            color: white;
        }

        .emergency-wrapper {
            max-width: 800px;
            margin: 40px auto;
            padding: 20px;
        }

        .emergency-card {
            background: white;
            color: #333;
            border-radius: 40px;
            padding: 40px;
            box-shadow: 0 20px 40px rgba(0,0,0,0.3);
            border-top: 10px solid #d32f2f;
        }

        .header-section {
            text-align: center;
            margin-bottom: 30px;
        }

        .header-section h1 {
            color: #d32f2f;
            margin: 10px 0;
            font-size: 28px;
        }

        .emergency-icon {
            font-size: 50px;
            animation: pulse 1.5s infinite;
        }

        @keyframes pulse {
            0% { transform: scale(1); opacity: 1; }
            50% { transform: scale(1.1); opacity: 0.7; }
            100% { transform: scale(1); opacity: 1; }
        }

        /* Search Section */
        .pet-finder {
            background: #fdf0f1;
            padding: 20px;
            border-radius: 20px;
            margin-bottom: 30px;
            border: 1px dashed #d32f2f;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 8px;
            font-size: 14px;
        }

        input, textarea, select {
            width: 100%;
            padding: 12px;
            border: 2px solid #eee;
            border-radius: 12px;
            box-sizing: border-box;
            font-size: 15px;
        }

        input:focus {
            border-color: #d32f2f;
            outline: none;
        }

        .grid-2 {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
        }

        .btn-broadcast {
            background: #d32f2f;
            color: white;
            border: none;
            padding: 18px;
            width: 100%;
            border-radius: 15px;
            font-weight: bold;
            font-size: 18px;
            cursor: pointer;
            transition: background 0.3s;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
        }

        .btn-broadcast:hover {
            background: #b71c1c;
        }

        .back-link {
            display: inline-block;
            margin-top: 20px;
            color: #666;
            text-decoration: none;
            font-weight: bold;
        }

        /* Success Overlay */
        #successOverlay {
            display: none;
            text-align: center;
            padding: 40px 0;
        }
    </style>
</head>
<body>

    <div class="emergency-wrapper">
        <div class="emergency-card">
            
            <div id="reportFormArea">
                <div class="header-section">
                    <div class="emergency-icon">📢</div>
                    <h1>Report a Lost Pet</h1>
                    <p>Submitting this form flags the microchip in the <strong>Sarawak Veterinary Database</strong> and alerts our volunteer network.</p>
                </div>

                <div class="pet-finder">
                    <label>Step 1: Identify the Pet</label>
                    <input type="text" id="petSearch" placeholder="Search by Pet Name or Microchip ID..." onkeyup="searchPet()">
                    <p style="font-size: 12px; color: #d32f2f; margin-top: 5px;">* If you don't know the ID, type the name (e.g., Ciko)</p>
                </div>

                <form onsubmit="sendEmergencyAlert(event)">
                    <div class="grid-2">
                        <div class="form-group">
                            <label>Owner Name</label>
                            <input type="text" placeholder="Full Name" required>
                        </div>
                        <div class="form-group">
                            <label>Emergency Contact</label>
                            <input type="tel" placeholder="Phone Number" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label>Last Seen Location (Area/Street)</label>
                        <input type="text" placeholder="e.g., Jalan Tabuan, Kuching" required>
                    </div>

                    <div class="form-group">
                        <label>Date & Time Last Seen</label>
                        <input type="datetime-local" required>
                    </div>

                    <div class="form-group">
                        <label>Distinctive Features / Behavior</label>
                        <textarea rows="3" placeholder="e.g. Wearing a red collar, very shy, limps on front paw..."></textarea>
                    </div>

                    <button type="submit" class="btn-broadcast">
                        🚨 Broadcast Emergency Alert
                    </button>
                </form>
            </div>

            <div id="successOverlay">
                <div style="font-size: 60px;">📡</div>
                <h1 style="color: #27ae60;">Alert Broadcasted!</h1>
                <p>The status of the microchip has been updated to <strong>"LOST"</strong>.</p>
                <div style="background: #f9f9f9; padding: 20px; border-radius: 15px; text-align: left; margin: 20px 0;">
                    <p><strong>Next Steps:</strong></p>
                    <ul style="font-size: 14px; line-height: 1.6;">
                        <li>Check with local councils (DBKU/MBKS).</li>
                        <li>Share the generated alert on social media.</li>
                        <li>Keep your phone line open for finder calls.</li>
                    </ul>
                </div>
                <button class="btn-broadcast" style="background: #333;" onclick="window.location.href='catpage.html'">Return to Gallery</button>
            </div>

            <center><a href="pet-microchip.html" class="back-link">← Cancel and Go Back</a></center>
        </div>
    </div>

    <script>
        function searchPet() {
            // This function would ideally filter a dropdown of pets
            let input = document.getElementById('petSearch').value;
            console.log("Searching for: " + input);
        }

        function sendEmergencyAlert(e) {
            e.preventDefault();
            // Hide form, show success
            document.getElementById('reportFormArea').style.display = "none";
            document.getElementById('successOverlay').style.display = "block";
            window.scrollTo(0, 0);
        }
    </script>
</body>
</html>
