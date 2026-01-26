<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pusak Kamek - Adoption Process</title>
    <link rel="stylesheet" href="style.css">
    <style>
        :root {
            --brand-maroon: #7a0019;
            --white: #ffffff;
            --light-peach: #fff5f6;
        }

        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: var(--brand-maroon);
        }

        /* --- Navbar (Standardized) --- */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 5%;
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

        /* --- Main Content --- */
        .page-wrapper {
            padding: 40px 5%;
            display: flex;
            justify-content: center;
        }

        .content-card {
            background-color: var(--white);
            width: 100%;
            max-width: 1000px;
            padding: 50px;
            border-radius: 40px;
            text-align: center;
            box-shadow: 0 20px 40px rgba(0,0,0,0.2);
        }

        /* Dual Path Header */
        .history-link-container {
            display: flex;
            justify-content: flex-end;
            margin-bottom: 20px;
        }

        .history-link {
            color: var(--brand-maroon);
            font-weight: bold;
            text-decoration: none;
            font-size: 14px;
            transition: 0.3s;
        }

        .history-link:hover { text-decoration: underline; }

        h1 { color: var(--brand-maroon); font-size: 36px; margin-bottom: 10px; margin-top: 0; }
        .subtitle { color: #666; margin-bottom: 40px; font-size: 18px; }

        /* --- Process Steps --- */
        .process-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
            margin-bottom: 50px;
        }

        .step-card {
            padding: 25px 20px;
            border: 2px solid #fce8eb;
            border-radius: 25px;
            transition: 0.3s;
            background: #fff;
        }

        .step-card:hover { 
            border-color: var(--brand-maroon); 
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.05);
        }

        .step-number {
            background: var(--brand-maroon);
            color: white;
            width: 35px;
            height: 35px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 15px;
            font-weight: bold;
        }

        .step-card h3 { margin-bottom: 10px; font-size: 18px; color: var(--brand-maroon); }
        .step-card p { font-size: 14px; color: #555; line-height: 1.5; margin: 0; }

        /* --- Important Info Section --- */
        .info-box {
            background-color: var(--light-peach);
            padding: 30px;
            border-radius: 25px;
            text-align: left;
            margin-bottom: 40px;
        }

        .info-box h2 { color: var(--brand-maroon); font-size: 22px; margin-top: 0; }
        .info-box ul { padding-left: 20px; color: #444; }
        .info-box li { margin-bottom: 10px; line-height: 1.6; }

        /* --- Success Stories Section --- */
        .success-section {
            border: 1px solid #fce8eb;
            padding: 30px;
            border-radius: 25px;
            margin-bottom: 40px;
        }

        .success-section h2 { font-size: 22px; color: #333; margin-bottom: 25px; }

        .story-grid {
            display: flex;
            gap: 30px;
            justify-content: center;
            flex-wrap: wrap;
        }

        .story-item { text-align: center; max-width: 180px; }

        .story-img {
            width: 90px;
            height: 90px;
            border-radius: 50%;
            object-fit: cover;
            border: 3px solid var(--brand-maroon);
            margin-bottom: 12px;
        }

        .story-text { font-size: 13px; color: #666; font-style: italic; line-height: 1.4; }

        /* --- Call to Action --- */
        .btn-adopt {
            background-color: var(--brand-maroon);
            color: white;
            text-decoration: none;
            padding: 18px 50px;
            border-radius: 40px;
            font-weight: bold;
            font-size: 18px;
            display: inline-block;
            transition: 0.3s;
            border: none;
            cursor: pointer;
        }

        .btn-adopt:hover { 
            transform: scale(1.05); 
            box-shadow: 0 10px 20px rgba(122,0,25,0.3); 
        }

        @media (max-width: 768px) {
            .navbar nav { display: none; }
            .content-card { padding: 30px 20px; }
            .process-container { grid-template-columns: 1fr; }
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
        <div class="user-profile-icon"><a href="profile.html">?</a></div>
    </header>

    <main class="page-wrapper">
        <div class="content-card">
            <div class="history-link-container">
                <a href="adoption-history.html" class="history-link">? View My Adoption Status & History ?</a>
            </div>

            <h1>Start Your Adoption Journey</h1>
            <p class="subtitle">Bringing a new family member home is a rewarding 4-step process.</p>

            <div class="process-container">
                <div class="step-card">
                    <div class="step-number">1</div>
                    <h3>Find Your Match</h3>
                    <p>Browse our available pets and find the one that speaks to your heart.</p>
                </div>
                <div class="step-card">
                    <div class="step-number">2</div>
                    <h3>Application</h3>
                    <p>Fill out the adoption form with your home details and pet experience.</p>
                </div>
                <div class="step-card">
                    <div class="step-number">3</div>
                    <h3>Interview</h3>
                    <p>A short meet-and-greet to ensure the pet fits your lifestyle perfectly.</p>
                </div>
                <div class="step-card">
                    <div class="step-number">4</div>
                    <h3>Welcome Home</h3>
                    <p>Sign the papers, pay the recovery fee, and start your life together!</p>
                </div>
            </div>

            <div class="info-box">
                <h2>Things to Know Before Applying</h2>
                <ul>
                    <li><strong>Commitment:</strong> You are agreeing to provide a "forever home" for 10-15+ years.</li>
                    <li><strong>Recovery Fee:</strong> Our fees cover vaccinations, neutering, and medical check-ups.</li>
                    <li><strong>Home Check:</strong> We may request a brief virtual or physical tour of your living area.</li>
                    <li><strong>Supplies:</strong> Ensure you have food, bowls, and bedding ready for arrival.</li>
                </ul>
            </div>

            <div class="success-section">
                <h2>Happy Tails</h2>
                <div class="story-grid">
                    <div class="story-item">
                        <img src="https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?q=80&w=150&h=150&auto=format&fit=crop" class="story-img" alt="Luna">
                        <p class="story-text">"Luna found her forever home last month!"</p>
                    </div>
                    <div class="story-item">
                        <img src="https://images.unsplash.com/photo-1583511655857-d19b40a7a54e?q=80&w=150&h=150&auto=format&fit=crop" class="story-img" alt="Buster">
                        <p class="story-text">"Buster loves his new big backyard."</p>
                    </div>
                </div>
                <p style="margin-top: 20px;"><a href="stories.html" style="color: var(--brand-maroon); font-size: 14px; font-weight: bold; text-decoration: none;">Read More Success Stories</a></p>
            </div>

            <a href="petbrowse.html" class="btn-adopt">Browse Available Pets</a>
        </div>
    </main>

</body>
</html>