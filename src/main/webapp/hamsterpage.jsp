<%-- 
    Document   : hamsterpage
    Created on : 27 Jan 2026, 3:52:33 am
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pusak Kamek - Hamsters</title>
    <link rel="stylesheet" href="style.css">
    <style>
        :root {
            --brand-maroon: #7a0019;
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

        .nav-link-active { background-color: var(--navbar-hover); }

        .user-profile-icon a {
            font-size: 24px;
            text-decoration: none;
            color: white;
        }

        /* Favorite Button Styling */
        .fav-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            background: rgba(255, 255, 255, 0.9);
            width: 30px;
            height: 30px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 18px;
            z-index: 5;
            cursor: pointer;
            transition: 0.2s;
        }
        .fav-btn:hover { transform: scale(1.2); }

        /* --- Filter Bar Styles --- */
        .filter-section {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin: 20px 0 30px 0;
            flex-wrap: wrap;
        }
        .filter-input {
            padding: 12px 20px;
            border-radius: 25px;
            border: 2px solid white;
            outline: none;
            font-size: 14px;
            width: 250px;
        }
        .filter-select {
            padding: 10px 20px;
            border-radius: 25px;
            border: 2px solid white;
            background: white;
            cursor: pointer;
        }

        /* Grid Styling */
        .pet-grid { 
            display: grid; 
            grid-template-columns: repeat(auto-fill, minmax(220px, 1fr)); 
            gap: 20px; 
            padding: 20px; 
        }
        .gallery-card { 
            background: white; 
            border-radius: 20px; 
            overflow: hidden; 
            cursor: pointer; 
            transition: 0.3s; 
            position: relative; 
        }
        .gallery-card:hover { transform: translateY(-5px); }
        .gallery-card-image img { width: 100%; height: 200px; object-fit: cover; }
        .gallery-card-content { padding: 15px; color: #333; }

        /* --- Modal Styles --- */
        .modal-overlay { display: none; position: fixed; z-index: 2000; left: 0; top: 0; width: 100%; height: 100%; background-color: rgba(0, 0, 0, 0.85); backdrop-filter: blur(8px); overflow-y: auto; }
        .modal-content { background-color: white; margin: 50px auto; width: 90%; max-width: 1000px; border-radius: 40px; padding: 20px; position: relative; animation: slideUp 0.4s ease-out; }
        @keyframes slideUp { from { transform: translateY(50px); opacity: 0; } to { transform: translateY(0); opacity: 1; } }
        .close-btn { position: absolute; right: 30px; top: 20px; font-size: 40px; cursor: pointer; color: var(--brand-maroon); z-index: 10; }
        
        .profile-card { display: flex; gap: 30px; padding: 20px; }
        .image-section { flex: 1; }
        .image-section img { width: 100%; border-radius: 20px; object-fit: cover; height: 450px; }
        .details-section { flex: 1.2; background: #fdf0f1; padding: 25px; border-radius: 20px; color: #333; }
        
        .pill-container { display: flex; gap: 10px; margin: 15px 0; }
        .pill-link { border: 2px solid #d67a8b; color: #d67a8b; padding: 8px 15px; border-radius: 12px; font-weight: bold; font-size: 13px; text-decoration: none; transition: 0.3s; }
        .pill-link:hover { background: #d67a8b; color: white; }

        .info-box { background: white; padding: 15px; border-radius: 15px; margin-bottom: 15px; border-left: 8px solid var(--brand-maroon); }
        .action-buttons { display: flex; gap: 15px; margin-top: 20px; }
        .btn { flex: 1; padding: 12px; border-radius: 20px; text-align: center; text-decoration: none; font-weight: bold; cursor: pointer; border: none; }
        .btn-adopt { background: var(--brand-maroon); color: white; }
        .btn-foster { background: #d67a8b; color: white; }

        @media (max-width: 768px) {
            .profile-card { flex-direction: column; }
            .image-section img { height: 300px; }
            .action-buttons { flex-direction: column; }
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
        <div class="container">
            <div class="pet-switcher">
                <a href="catpage.html" class="switch-btn">Cats</a>
                <a href="dogpage.html" class="switch-btn">Dogs</a>
                <a href="rabbitpage.html" class="switch-btn">Rabbits</a>
                <a href="hamsterpage.html" class="switch-btn active-pet">Hamsters</a>
            </div>

            <div class="filter-section">
                <input type="text" id="nameSearch" class="filter-input" placeholder="Search hamster name..." onkeyup="runAllFilters()">
                
                <select id="breedFilter" class="filter-select" onchange="runAllFilters()">
                    <option value="all">Any Breed</option>
                    <option value="syrian">Syrian</option>
                    <option value="dwarf">Dwarf Hamster</option>
                    <option value="roborovski">Roborovski</option>
                </select>

                <select id="genderFilter" class="filter-select" onchange="runAllFilters()">
                    <option value="all">Any Gender</option>
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                </select>

                <select id="ageFilter" class="filter-select" onchange="runAllFilters()">
                    <option value="all">Any Age</option>
                    <option value="young">Young</option>
                    <option value="adult">Adult</option>
                </select>
            </div>

            <div class="pet-grid" id="hamsterGrid">
                <div class="gallery-card" data-name="cheeks" data-breed="syrian" data-age="young" data-gender="female" onclick="handleCardClick(event, 'Cheeks', 'Young', 'Syrian', 'Female', 'https://images.unsplash.com/photo-1548767797-d8c844163c4c?q=80&w=500', 'Cheeks loves to stuff her pouches with sunflower seeds!')">
                    <div class="fav-btn" onclick="toggleFav(event, this)">🤍</div>
                    <div class="gallery-card-image"><img src="https://images.unsplash.com/photo-1548767797-d8c844163c4c?q=80&w=500"></div>
                    <div class="gallery-card-content"><p>Name: Cheeks</p><p>Age: Young</p><p>Gender: Female</p></div>
                </div>

                <div class="gallery-card" data-name="peanut" data-breed="dwarf" data-age="adult" data-gender="male" onclick="handleCardClick(event, 'Peanut', 'Adult', 'Dwarf', 'Male', 'https://images.unsplash.com/photo-1601612620453-93668784d16d?q=80&w=500', 'Peanut is a champion at running on his silent wheel.')">
                    <div class="fav-btn" onclick="toggleFav(event, this)">🤍</div>
                    <div class="gallery-card-image"><img src="https://images.unsplash.com/photo-1601612620453-93668784d16d?q=80&w=500"></div>
                    <div class="gallery-card-content"><p>Name: Peanut</p><p>Age: Adult</p><p>Gender: Male</p></div>
                </div>

                <div class="gallery-card" data-name="nibbles" data-breed="roborovski" data-age="young" data-gender="male" onclick="handleCardClick(event, 'Nibbles', 'Young', 'Roborovski', 'Male', 'https://images.unsplash.com/photo-1510255873413-5d757d5a043c?q=80&w=500', 'Nibbles is incredibly fast and fun to watch!')">
                    <div class="fav-btn" onclick="toggleFav(event, this)">🤍</div>
                    <div class="gallery-card-image"><img src="https://images.unsplash.com/photo-1510255873413-5d757d5a043c?q=80&w=500"></div>
                    <div class="gallery-card-content"><p>Name: Nibbles</p><p>Age: Young</p><p>Gender: Male</p></div>
                </div>

                <div class="gallery-card" data-name="mochi" data-breed="syrian" data-age="adult" data-gender="female" onclick="handleCardClick(event, 'Mochi', 'Adult', 'Syrian', 'Female', 'https://images.unsplash.com/photo-1425082661705-1834bfd09dca?q=80&w=500', 'Mochi is a gentle soul who loves gentle pets.')">
                    <div class="fav-btn" onclick="toggleFav(event, this)">🤍</div>
                    <div class="gallery-card-image"><img src="https://images.unsplash.com/photo-1425082661705-1834bfd09dca?q=80&w=500"></div>
                    <div class="gallery-card-content"><p>Name: Mochi</p><p>Age: Adult</p><p>Gender: Female</p></div>
                </div>

                <div class="gallery-card" data-name="button" data-breed="dwarf" data-age="young" data-gender="female" onclick="handleCardClick(event, 'Button', 'Young', 'Dwarf', 'Female', 'https://images.unsplash.com/photo-1548767797-d8c844163c4c?q=80&w=500', 'Button is as cute as... well, a button!')">
                    <div class="fav-btn" onclick="toggleFav(event, this)">🤍</div>
                    <div class="gallery-card-image"><img src="https://images.unsplash.com/photo-1548767797-d8c844163c4c?q=80&w=500"></div>
                    <div class="gallery-card-content"><p>Name: Button</p><p>Age: Young</p><p>Gender: Female</p></div>
                </div>

                <div class="gallery-card" data-name="nugget" data-breed="roborovski" data-age="adult" data-gender="female" onclick="handleCardClick(event, 'Nugget', 'Adult', 'Roborovski', 'Female', 'https://images.unsplash.com/photo-1510255873413-5d757d5a043c?q=80&w=500', 'Nugget loves tunnels and hiding in her bedding.')">
                    <div class="fav-btn" onclick="toggleFav(event, this)">🤍</div>
                    <div class="gallery-card-image"><img src="https://images.unsplash.com/photo-1510255873413-5d757d5a043c?q=80&w=500"></div>
                    <div class="gallery-card-content"><p>Name: Nugget</p><p>Age: Adult</p><p>Gender: Female</p></div>
                </div>

                <div class="gallery-card" data-name="porkchop" data-breed="syrian" data-age="young" data-gender="male" onclick="handleCardClick(event, 'Porkchop', 'Young', 'Syrian', 'Male', 'https://images.unsplash.com/photo-1425082661705-1834bfd09dca?q=80&w=500', 'Porkchop is a fluffy explorer.')">
                    <div class="fav-btn" onclick="toggleFav(event, this)">🤍</div>
                    <div class="gallery-card-image"><img src="https://images.unsplash.com/photo-1425082661705-1834bfd09dca?q=80&w=500"></div>
                    <div class="gallery-card-content"><p>Name: Porkchop</p><p>Age: Young</p><p>Gender: Male</p></div>
                </div>

                <div class="gallery-card" data-name="snowy" data-breed="dwarf" data-age="adult" data-gender="female" onclick="handleCardClick(event, 'Snowy', 'Adult', 'Dwarf', 'Female', 'https://images.unsplash.com/photo-1601612620453-93668784d16d?q=80&w=500', 'Snowy has a beautiful white coat and a curious nature.')">
                    <div class="fav-btn" onclick="toggleFav(event, this)">🤍</div>
                    <div class="gallery-card-image"><img src="https://images.unsplash.com/photo-1601612620453-93668784d16d?q=80&w=500"></div>
                    <div class="gallery-card-content"><p>Name: Snowy</p><p>Age: Adult</p><p>Gender: Female</p></div>
                </div>
            </div>

            <div id="noResults" style="display:none; color:white; text-align:center; padding: 50px;">
                <h3>No hamsters found matching those filters.</h3>
            </div>
        </div>
    </main>

    <div id="petModal" class="modal-overlay">
        <div class="modal-content">
            <span class="close-btn" onclick="closeModal()">&times;</span>
            <div class="profile-card">
                <div class="image-section"><img id="modalImg" src=""></div>
                <div class="details-section">
                    <h1 id="modalName">Name <span id="modalAgeHeader" style="color: gray; font-size: 20px;"></span></h1>
                    <div class="pill-container">
                        <a href="vaccine-record.html" class="pill-link">Vaccination Records</a>
                        <a href="pet-microchip.html" class="pill-link">Microchip Records</a>
                    </div>
                    <div class="info-box">
                        <p><strong>Age:</strong> <span id="modalAge"></span></p>
                        <p><strong>Gender:</strong> <span id="modalGender"></span></p>
                        <p><strong>Breed:</strong> <span id="modalBreed"></span></p>
                        <p><strong>About:</strong> <span id="modalDesc"></span></p>
                    </div>
                    <div class="action-buttons">
                        <a href="adopt-application.html" class="btn btn-adopt">Apply to Adopt</a>
                        <a href="foster-form.html" class="btn btn-foster">Foster Temporarily</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

<script>
    // --- FAVORITE LOGIC ---
    function toggleFav(event, element) {
        event.stopPropagation(); // Prevents modal from opening when clicking heart
        const card = element.closest('.gallery-card');
        const petData = {
            name: card.querySelector('.gallery-card-content p:nth-child(1)').innerText.replace('Name: ', ''),
            breed: card.querySelector('.gallery-card-content p:nth-child(3)').innerText.replace('Gender: ', '') + " " + card.getAttribute('data-breed'),
            img: card.querySelector('img').src
        };

        let favorites = JSON.parse(localStorage.getItem('favPets')) || [];

        if (element.innerText === '🤍') {
            element.innerText = '❤️';
            if (!favorites.some(p => p.name === petData.name)) {
                favorites.push(petData);
            }
        } else {
            element.innerText = '🤍';
            favorites = favorites.filter(p => p.name !== petData.name);
        }
        localStorage.setItem('favPets', JSON.stringify(favorites));
    }

    // Prevents modal opening when clicking the favorite heart
    function handleCardClick(event, name, age, breed, gender, img, desc) {
        if (!event.target.classList.contains('fav-btn')) {
            openModal(name, age, breed, gender, img, desc);
        }
    }

    function openModal(name, age, breed, gender, img, desc) {
        document.getElementById('modalName').firstChild.textContent = name + " ";
        document.getElementById('modalAgeHeader').innerText = age;
        document.getElementById('modalAge').innerText = age;
        document.getElementById('modalBreed').innerText = breed;
        document.getElementById('modalGender').innerText = gender;
        document.getElementById('modalImg').src = img;
        document.getElementById('modalDesc').innerText = desc;

        const mockID = "982 000 " + Math.floor(Math.random() * 899 + 100) + " " + Math.floor(Math.random() * 899 + 100);
        const microchipPill = document.querySelector('a[href="pet-microchip.html"]');
        if (microchipPill) {
            microchipPill.href = `pet-microchip.html?name=${encodeURIComponent(name)}&breed=${encodeURIComponent(breed)}&id=${encodeURIComponent(mockID)}`;
        }

        document.getElementById('petModal').style.display = "block";
        document.body.style.overflow = "hidden";
    }

    function closeModal() {
        document.getElementById('petModal').style.display = "none";
        document.body.style.overflow = "auto";
    }

    function runAllFilters() {
        const name = document.getElementById('nameSearch').value.toLowerCase();
        const breed = document.getElementById('breedFilter').value;
        const age = document.getElementById('ageFilter').value;
        const gender = document.getElementById('genderFilter').value;
        const cards = document.getElementsByClassName('gallery-card');
        let found = 0;

        for (let card of cards) {
            const mName = card.getAttribute('data-name').toLowerCase().includes(name);
            const mBreed = (breed === 'all' || card.getAttribute('data-breed') === breed);
            const mAge = (age === 'all' || card.getAttribute('data-age') === age);
            const mGender = (gender === 'all' || card.getAttribute('data-gender') === gender);

            if (mName && mBreed && mAge && mGender) { 
                card.style.display = ""; 
                found++; 
            } else { 
                card.style.display = "none"; 
            }
        }
        document.getElementById('noResults').style.display = (found === 0) ? "block" : "none";
    }

    window.onclick = function(event) {
        if (event.target == document.getElementById('petModal')) { closeModal(); }
    }
</script>
</body>
</html>