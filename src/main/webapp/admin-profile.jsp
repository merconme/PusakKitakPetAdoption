<%-- 
    Document   : admin-profile
    Created on : 27 Jan 2026, 3:47:37 am
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Profile - Pusak Kamek</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        :root {
            --admin-dark-maroon: #4a0010;
            --admin-accent-maroon: #7a0019;
            --bg-light: #f4f7f6;
            --text-grey: #666;
            --shadow: 0 4px 15px rgba(0,0,0,0.08);
        }

        body {
            margin: 0; font-family: 'Segoe UI', sans-serif;
            background-color: var(--bg-light); display: flex;
            height: 100vh; overflow: hidden;
        }

        /* --- Reuse Sidebar Styles --- */
        .sidebar { width: 280px; background-color: var(--admin-dark-maroon); color: white; display: flex; flex-direction: column; }
        .sidebar-header { padding: 30px 20px; text-align: center; border-bottom: 1px solid rgba(255,255,255,0.1); }
        .nav-menu { flex-grow: 1; padding: 20px 0; overflow-y: auto; }
        .nav-item { padding: 12px 25px; display: flex; align-items: center; gap: 15px; color: rgba(255,255,255,0.7); text-decoration: none; transition: 0.2s; font-size: 14px; }
        .nav-item:hover, .nav-item.active { background-color: var(--admin-accent-maroon); color: white; border-left: 4px solid #fff; }
        .nav-section-title { padding: 10px 25px; font-size: 11px; text-transform: uppercase; color: rgba(255,255,255,0.4); }

        /* --- Main Layout --- */
        .main-content { flex-grow: 1; overflow-y: auto; display: flex; flex-direction: column; }
        .top-bar { background: white; padding: 15px 40px; display: flex; justify-content: space-between; align-items: center; box-shadow: 0 2px 5px rgba(0,0,0,0.05); }
        .content-padding { padding: 40px; max-width: 800px; }

        /* --- Profile Styles --- */
        .profile-card { background: white; padding: 40px; border-radius: 20px; box-shadow: var(--shadow); position: relative; }
        .profile-header { display: flex; align-items: center; gap: 30px; margin-bottom: 40px; border-bottom: 1px solid #eee; padding-bottom: 30px; }
        .profile-img-container { position: relative; width: 120px; height: 120px; }
        .profile-img-container img { width: 100%; height: 100%; border-radius: 50%; object-fit: cover; border: 4px solid #fff0f2; }
        .change-img-btn { position: absolute; bottom: 5px; right: 5px; background: var(--admin-accent-maroon); color: white; width: 35px; height: 35px; border-radius: 50%; display: flex; align-items: center; justify-content: center; border: 3px solid white; cursor: pointer; font-size: 14px; }

        .form-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 20px; }
        .form-group { display: flex; flex-direction: column; gap: 8px; }
        .form-group.full { grid-column: span 2; }
        label { font-size: 13px; font-weight: 700; color: var(--text-grey); text-transform: uppercase; }
        input { padding: 12px; border: 1px solid #ddd; border-radius: 8px; font-size: 14px; transition: 0.3s; }
        input:focus { border-color: var(--admin-accent-maroon); outline: none; box-shadow: 0 0 0 3px rgba(122, 0, 25, 0.1); }

        .save-btn { background: var(--admin-accent-maroon); color: white; border: none; padding: 15px 30px; border-radius: 8px; font-weight: 700; cursor: pointer; margin-top: 20px; transition: 0.3s; }
        .save-btn:hover { background: var(--admin-dark-maroon); transform: translateY(-2px); }
        
        .back-link { text-decoration: none; color: var(--text-grey); font-size: 14px; display: flex; align-items: center; gap: 5px; margin-bottom: 20px; }
        .back-link:hover { color: var(--admin-accent-maroon); }
    </style>
</head>
<body>

    <aside class="sidebar">
        <div class="sidebar-header">
            <h3 style="margin:0;">PUSAK KAMEK</h3>
            <small>Pet Adoption</small>
        </div>
        <nav class="nav-menu">
            <a href="admin-index.html" class="nav-item"><i class="fa-solid fa-gauge"></i> Dashboard</a>
            <div class="nav-section-title">Pet Management</div>
            <a href="add-pet.html" class="nav-item"><i class="fa-solid fa-plus-circle"></i> Add New Pet</a>
            <a href="add-petbrowse.html" class="nav-item"><i class="fa-solid fa-list-check"></i> Pet Browse/Update</a>
            <a href="admin-microreg.html" class="nav-item"><i class="fa-solid fa-microchip"></i> Microchip Reg</a>
            <a href="admin-petupdate.html" class="nav-item"><i class="fa-solid fa-calendar-check"></i> Pet Check-ins</a>
            <div class="nav-section-title">System</div>
            <a href="admin-profile.html" class="nav-item active"><i class="fa-solid fa-user-gear"></i> My Profile</a>
        </nav>
        <div style="padding: 20px; border-top: 1px solid rgba(255,255,255,0.1);">
            <a href="login.html" class="nav-item" style="color: #ff8a8a;"><i class="fa-solid fa-power-off"></i> Logout</a>
        </div>
    </aside>

    <main class="main-content">
        <header class="top-bar">
            <h2 style="margin:0; font-size: 20px;">Admin Settings</h2>
        </header>

        <div class="content-padding">
            <a href="admin-index.html" class="back-link"><i class="fa-solid fa-arrow-left"></i> Back to Dashboard</a>
            
            <div class="profile-card">
                <div class="profile-header">
                    <div class="profile-img-container">
                        <img src="https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?q=80&w=120" alt="Admin">
                        <label for="img-upload" class="change-img-btn"><i class="fa-solid fa-camera"></i></label>
                        <input type="file" id="img-upload" style="display:none;">
                    </div>
                    <div>
                        <h2 style="margin:0;">System Administrator</h2>
                        <p style="color: var(--text-grey); margin: 5px 0;">Manage your personal account details</p>
                    </div>
                </div>

                <form class="form-grid">
                    <div class="form-group">
                        <label>Full Name</label>
                        <input type="text" value="Super Admin">
                    </div>
                    <div class="form-group">
                        <label>Username</label>
                        <input type="text" value="admin_pusakkamek">
                    </div>
                    <div class="form-group full">
                        <label>Email Address</label>
                        <input type="email" value="admin@pusakkamek.com">
                    </div>
                    <div class="form-group">
                        <label>New Password</label>
                        <input type="password" placeholder="Leave blank to keep current">
                    </div>
                    <div class="form-group">
                        <label>Confirm Password</label>
                        <input type="password" placeholder="Confirm new password">
                    </div>
                    
                    <div class="form-group full">
                        <button type="button" class="save-btn" onclick="alert('Profile Updated Successfully!')">Save Profile Changes</button>
                    </div>
                </form>
            </div>
        </div>
    </main>

</body>
</html>
