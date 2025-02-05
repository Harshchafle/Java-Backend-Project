<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <style>
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
           <style>
        body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
    margin: 0;
    padding: 0;
    transition: background-color 0.3s, color 0.3s;
}

.container {
    width: 60%;
    margin: auto;
    overflow: hidden;
    padding: 20px;
}

h1 {
    color: #333;
}

form {
    background: #f4f4f4;
    padding: 20px;
    margin-bottom: 20px;
}

label {
    display: block;
    margin-bottom: 5px;
}

select, input[type="submit"] {
    width: 100%;
    padding: 8px;
    margin-bottom: 10px;
}

input[type="submit"] {
    background: #383;
    color: #000;
    border: none;
    cursor: pointer;
}

input[type="submit"]:hover {
    background: #555;
}

button {
    padding: 10px;
    margin-top: 10px;
    cursor: pointer;
}
.showPref {
    display: flex;
    flex-direction : row;
    justify-content: center; /* or space-between */
    align-items: center; /* Vertically center */
    white-space: nowrap; /* Prevent wrapping */
}

.showPref > * {
    text-align: center; /* or text-align: left; for left alignment */
}
        --------------
        dark mode
        --------------
body {
    transition: background-color 0.3s, color 0.3s; /* Smooth transition */
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
    <nav >
        <ul>
            <li><a href="home.jsp">Home</a> </li>
            <li><a href="about.jsp ">About us</a> </li>
            <li><a href="contact.jsp">Contact us</a> </li>
            <li><a href="logout.html">Log out</a></li>
        </ul>
    </nav>
    <div class="container">
        <h1>Set Your Preferences</h1>
        <p>Welcome, <%= session.getAttribute("sessionUserName") != null ? session.getAttribute("sessionUserName") : "Guest" %>!</p>
        <p class="showPref">
            <p>Language : <%= session.getAttribute("sessionLanguage") != null ? session.getAttribute("sessionLanguage") : "Default" %></p>
            <p>Theme : <%= session.getAttribute("sessionTheme") != null ? session.getAttribute("sessionTheme") : "Default" %></p>
            <p>Notification : <%= session.getAttribute("sessionNotif") != null ? session.getAttribute("sessionNotif") : "Default" %></p>
        </p>
        <form action="savePreferences" method="get">
            <label for="language">Preferred Language:</label>
            <select name="language" id="language">
                <option value="English">English</option>
                <option value="Spanish">Spanish</option>
                <option value="French">French</option>
            </select>

            <label for="theme">Theme:</label>
            <select name="theme" id="theme">
                <option value="LightMode">Light Mode</option>
                <option value="DarkMode">Dark Mode</option>
            </select>

            <label for="notificationSetting">Notification Setting:</label>
            <select name="notificationSetting" id="notificationSetting">
                <option value="Email">Email</option>
                <option value="SMS">SMS</option>
                <option value="None">None</option>
            </select>

            <input type="submit" value="Save Preferences">
        </form>
    </div>
</body>
</html>