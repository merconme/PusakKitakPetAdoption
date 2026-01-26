<%-- 
    Document   : add-pet
    Created on : 27 Jan 2026, 3:45:05 am
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pet List - Pusak Kamek Admin</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;800&display=swap" rel="stylesheet">
    <style>
        :root {
            --brand-maroon: #7a0019;
            --brand-maroon-light: #96102b;
            --shadow: 0 4px 20px rgba(0,0,0,0.1);
        }

        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: radial-gradient(circle at top, var(--brand-maroon-light), var(--brand-maroon));
            background-attachment: fixed;
            color: white;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        /* --- NAVBAR --- */
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
        .logo-text { font-weight: 800; line-height: 1.1; font-size: 18px; }
        .nav-links { display: flex; list-style: none; gap: 5px; margin: 0; padding: 0; }
        .nav-links a { color: #555; text-decoration: none; font-weight: 600; font-size: 14px; padding: 10px 18px; border-radius: 10px; }
        .nav-active { background: var(--brand-maroon) !important; color: white !important; }

        .admin-profile { display: flex; align-items: center; gap: 10px; color: var(--brand-maroon); font-weight: 700; }
        .profile-icon { width: 40px; height: 40px; background: #eee; border-radius: 50%; display: flex; align-items: center; justify-content: center; font-size: 18px; }

        /* --- CONTENT HEADER & BACK BUTTON --- */
        .page-header {
            max-width: 1400px;
            width: 90%;
            margin: 120px auto 30px; /* Space for fixed navbar */
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        h1 { margin: 0; font-size: 32px; font-weight: 800; }

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

        /* --- PET GRID --- */
        .pet-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
            gap: 30px;
            padding: 0 5% 50px;
            max-width: 1400px;
            margin: 0 auto;
        }

        .pet-card {
            background: white;
            color: #333;
            border-radius: 30px;
            overflow: hidden;
            box-shadow: var(--shadow);
            transition: 0.3s;
        }
        .pet-card:hover { transform: translateY(-5px); }
        .pet-card img { width: 100%; height: 220px; object-fit: cover; }
        .pet-info { padding: 20px; }
        .pet-info p { margin: 4px 0; font-weight: 800; font-size: 14px; }
        .pet-info span { font-weight: 400; color: #666; }

        .add-pet-card {
            background: rgba(255, 255, 255, 0.1);
            border: 2px dashed rgba(255, 255, 255, 0.4);
            border-radius: 30px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            cursor: pointer;
            min-height: 330px;
            transition: 0.3s;
            gap: 10px;
        }
        .add-pet-card:hover { background: rgba(255, 255, 255, 0.2); }
        .plus-icon { font-size: 60px; color: white; opacity: 0.7; }
        .add-text { color: white; font-weight: 600; opacity: 0.8; }

        /* --- MODAL --- */
        .modal-overlay {
            position: fixed;
            top: 0; left: 0; width: 100%; height: 100%;
            background: rgba(0,0,0,0.7);
            display: none;
            justify-content: center;
            align-items: center;
            z-index: 2000;
            backdrop-filter: blur(5px);
        }

        .modal-content {
            background: white; color: var(--brand-maroon);
            padding: 30px; border-radius: 30px;
            width: 90%; max-width: 800px;
            display: flex; gap: 25px;
            position: relative; max-height: 90vh; overflow-y: auto;
        }

        .close-btn { position: absolute; top: 15px; right: 20px; font-size: 24px; cursor: pointer; color: #ccc; }
        .modal-left { flex: 0 0 200px; display: flex; flex-direction: column; align-items: center; }
        
        .circle-upload {
            width: 160px; height: 160px;
            border: 2px solid #eee; border-radius: 50%;
            display: flex; flex-direction: column; align-items: center; justify-content: center;
            background: #fafafa; cursor: pointer;
        }

        .modal-right { flex: 1; }
        .form-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 10px 20px; }
        .form-group { display: flex; flex-direction: column; gap: 4px; }
        .form-group label { font-weight: 700; font-size: 12px; color: #555; text-transform: uppercase; }
        .form-group input { padding: 10px 15px; border-radius: 12px; border: 1px solid #ddd; outline: none; }
        
        .submit-container { grid-column: span 2; display: flex; justify-content: flex-end; margin-top: 15px; }
        .submit-btn { background: var(--brand-maroon); color: white; border: none; padding: 12px 35px; border-radius: 12px; font-weight: 700; cursor: pointer; }
    </style>
</head>
<body>

    <header class="navbar">
        <div class="logo-section">
            <div class="profile-icon" style="background: var(--brand-maroon); color: white; font-weight: 800;">PK</div>
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
        <h1>Manage Pets</h1>
        <a href="admin-index.html" class="back-btn">
            <i class="fa-solid fa-arrow-left"></i> Back to Dashboard
        </a>
    </div>

    <main>
        <div class="pet-grid">
            <div class="pet-card">
                <img src="https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?w=400" alt="Pet">
                <div class="pet-info">
                    <p>Name: <span>Mimi</span></p>
                    <p>Age: <span>2 Years</span></p>
                    <p>Breed: <span>Domestic Shorthair</span></p>
                </div>
            </div>

            <div class="pet-card">
                <img src="https://images.unsplash.com/photo-1573865526739-10659fec78a5?w=400" alt="Pet">
                <div class="pet-info">
                    <p>Name: <span>Luna</span></p>
                    <p>Age: <span>1.5 Years</span></p>
                    <p>Breed: <span>Calico</span></p>
                </div>
            </div>
			
			<div class="pet-card">

                <img src="https://images.unsplash.com/photo-1533738363-b7f9aef128ce?w=400" alt="Pet">

                <div class="pet-info">
                    <p>Name: <span>Milo</span></p>
                    <p>Age: <span>3 Years</span></p>
                    <p>Breed: <span>Ginger Tabby</span></p>
                </div>
            </div>

            <div class="add-pet-card" onclick="openModal()">
                <div class="plus-icon">+</div>
                <div class="add-text">Add New Pet</div>
            </div>
        </div>
    </main>

    <div class="modal-overlay" id="petModal">
        <div class="modal-content">
            <span class="close-btn" onclick="closeModal()">&times;</span>
            <div class="modal-left">
                <div class="circle-upload" onclick="document.getElementById('fileInput').click()">
                    <span style="font-size: 30px;">📷</span>
                    <div style="font-size: 11px; font-weight: 700;">Add Photo</div>
                    <input type="file" id="fileInput" hidden>
                </div>
            </div>
            <div class="modal-right">
                <h3 style="margin-top: 0;">Add New Pet Entry</h3>
                <div class="form-grid">
                    <div class="form-group"><label>Category</label><input type="text" placeholder="e.g. Cat"></div>
                    <div class="form-group"><label>Name</label><input type="text" placeholder="Pet Name"></div>
                    <div class="form-group"><label>Breed</label><input type="text" placeholder="e.g. Siamese"></div>
                    <div class="form-group"><label>Age</label><input type="text" placeholder="e.g. 6 Months"></div>
                    <div class="form-group"><label>Vaccinated</label><input type="text" placeholder="Yes/No"></div>
                    <div class="form-group"><label>Condition</label><input type="text" placeholder="Healthy"></div>
                    <div class="form-group"><label>Neutered</label><input type="text" placeholder="Yes/No"></div>
                    <div class="form-group"><label>Color</label><input type="text" placeholder="e.g. White"></div>
                    <div class="submit-container">
                        <button class="submit-btn" onclick="closeModal()">Save Pet</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        const modal = document.getElementById('petModal');
        function openModal() { modal.style.display = 'flex'; }
        function closeModal() { modal.style.display = 'none'; }
        
        window.onclick = function(event) {
            if (event.target == modal) closeModal();
        }
    </script>
</body>
</html>
