<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>About us</title>
    <style>
        body {
            font-family: sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4; /* Light background */
            color: #333; /* Dark text color */
            line-height: 1.6; /* Improved readability */
        }

        .container {
            width: 80%;
            max-width: 960px;
            margin: 20px auto; /* Center the content */
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h1, h2, h3 {
            color: #007bff; /* Blue headings */
        }

        h1 {
            font-size: 2.5em;
            margin-bottom: 10px;
        }

        h2 {
            font-size: 1.8em;
            margin-top: 20px;
            margin-bottom: 10px;
        }

        p {
            margin-bottom: 15px;
        }

        .team {
            display: flex;
            flex-wrap: wrap;
            justify-content: center; /* Center team members */
            margin-top: 20px;
        }

        .team-member {
            width: 250px; /* Adjust width as needed */
            margin: 15px;
            text-align: center; /* Center member info */
            border : 2px solid black;
            border-radius : 20px;
        }

        .team-member img {
            width: 150px;
            height: 150px;
            border-radius: 50%; /* Make images circular */
            object-fit: cover;  /* Maintain aspect ratio and cover the circle */
            margin-bottom: 10px;
        }

        footer {
            text-align: center;
            padding: 10px;
            background-color: #333;
            color: #fff;
            margin-top: 20px;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .container {
                width: 90%;
                padding: 15px;
            }

            h1 {
                font-size: 2em;
            }

            h2 {
                font-size: 1.5em;
            }

            .team-member {
                width: 45%; /* Two team members per row on smaller screens */
                margin: 10px;
            }
        }

        @media (max-width: 500px) {
            .team-member {
                width: 90%; /* One team member per row on very small screens */
            }
        }

        .navigator{
            nav {
    background-color: #333; /* Dark background color */
    padding: 10px; /* Add some padding */
    position: sticky; /* Make the navbar stick to the top */
    top: 0; /* Stick to the top */
    z-index: 100; /* Ensure it's above other content */
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Add a subtle shadow */
}

nav ul {
    list-style: none; /* Remove bullet points */
    margin: 0;
    padding: 0;
    text-align: center; /* Center the links */
}

nav li {
    display: inline-block; /* Make list items horizontal */
    margin: 0 15px; /* Add spacing between links */
}

nav a {
    text-decoration: none; /* Remove underlines */
    color: #fff; /* White text color */
    font-weight: bold; /* Make text bold */
    padding: 8px 12px; /* Add padding around the links */
    border-radius: 5px; /* Round the link corners */
    transition: background-color 0.3s ease; /* Add a smooth transition for hover effect */
}

nav a:hover {
    background-color: #555; /* Darker background on hover */
    color: #f0ad4e; /* Change text color on hover */
}

/* Optional: Style the active link */
nav a.active, nav a:active{
    background-color: #f0ad4e; /* Highlight the active link */
    color: #333;
}

/* Optional: Add a logo */.logo {
    float: left; /* Position the logo to the left */
    margin-left: 15px; /* Add some left margin */
}.logo img {
    height: 40px; /* Set the logo height */
    vertical-align: middle; /* Vertically align the logo */
}

/* Responsive adjustments (Example: Stack links on smaller screens) */
@media (max-width: 768px) {
    nav ul {
        text-align: center; /* Center links */
    }

    nav li {
        display: block; /* Stack links vertically */
        margin: 10px 0; /* Add vertical margin */
    }

}

        }


/* Dark Mode Styles */
body.dark-mode {
    background-color: #333;
    color: #eee; /* Lighter text for better contrast */
}

body.dark-mode h1, body.dark-mode h2, body.dark-mode h3 {
    color: #fff; /* White headings */
}

body.dark-mode form, body.dark-mode .container { /* Dark mode for form and container */
    background-color: #444; /* Darker background for form */
    color: #eee;
}

body.dark-mode label {
    color: #ddd; /* Lighter label color */
}

body.dark-mode select, body.dark-mode input[type="submit"], body.dark-mode textarea {
    background-color: #555; /* Darker background for form elements */
    color: #eee; /* Lighter text color */
    border: 1px solid #666; /* Darker border */
}

body.dark-mode input[type="submit"] {
    background: #777;
}

body.dark-mode input[type="submit"]:hover {
    background: #999;
}
    </style>
</head>
<body class="<%= (session.getAttribute("sessionTheme") != null && session.getAttribute("sessionTheme").equals("DarkMode")) ? "dark-mode" : "" %>">
<div class="navigator">
    <nav >
        <ul>
            <li><a href="home.jsp">Home</a> </li>
            <li><a href="about.jsp">About us</a> </li>
            <li><a href="contact.jsp">Contact us</a> </li>
            <li><a href="logout.html">Log out</a></li>
        </ul>
    </nav>
</div>
<div class="container">

    <h1>About Us</h1>

    <h4>We are a team of passionate Java Developers with Strong Understanding in Object Oriented Programming and Backend Development with Java along with Maven.</h4>

    <h2>Our Team</h2>
    <div class="team">
        <div class="team-member">
            <h3>Harsh Chafle</h3>
            <p>CEO & Founder</p>
        </div>
        <div class="team-member">
            <h3>Mayur Tetwar</h3>
            <p>CTO</p>
        </div>
    </div>
</div>

<footer>
    &copy; 2025 RamdeoBaba College Of Engineering And Management
</footer>
</body>
</html>