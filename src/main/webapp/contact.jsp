<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact</title>
    <style>
        body {
            font-family: sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
            line-height: 1.6;
        }

        .container {
            width: 80%;
            max-width: 960px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h1 {
            font-size: 2.5em;
            color: #007bff; /* Blue heading */
            margin-bottom: 20px;
            text-align: center; /* Center the main heading */
        }

        .contact-info {
            margin-bottom: 20px;
        }

        .contact-info h2 {
            font-size: 1.8em;
            color: #007bff;
            margin-bottom: 10px;
        }
        .contact-info p {
            margin-bottom: 10px;
        }

        .contact-form {
            margin-top: 20px;
        }

        .contact-form label {
            display: block; /* Make labels stack on top of inputs */
            margin-bottom: 5px;
            font-weight: bold;
        }

        .contact-form input,
        .contact-form textarea {
            width: calc(100% - 12px); /* Full width with padding adjustment */
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box; /* Include padding in width calculation */
            font-size: 16px;
        }

        .contact-form textarea {
            height: 150px;
        }

        .contact-form button {
            background-color: #007bff; /* Blue button */
            color: white;
            padding: 12px 25px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        .contact-form button:hover {
            background-color: #0056b3; /* Darker blue on hover */
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

            .contact-info h2 {
                font-size: 1.5em;
            }

            .contact-form input,
            .contact-form textarea {
                font-size: 15px;
            }

            .contact-form button {
                font-size: 15px;
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
    <h1>Contact Us</h1>

    <div class="contact-info">
        <p>Email: chaflehp@rknec.edu</p>
        <p>Phone: 1234567890</p>
        <p>Address: 29, In front of Dr.BabaSaheb Ambedkar garden BhupeshNagar Pension Nagar, Nagpur</p>
    </div>

    <div class="contact-form">
        <h2>Send a Message</h2>
        <form action="home.jsp" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="message">Message:</label>
            <textarea id="message" name="message" required></textarea>

            <button type="submit">Send Message</button>
        </form>
    </div>

</div>

<footer>
    &copy; 2025 RamdeoBaba College Of Engineering And Management
</footer>

</body>
</html>