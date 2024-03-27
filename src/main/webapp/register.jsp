<html>

<head>
    <title>Matrimone website </title>
    <link rel="stylesheet" href="register.css">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <script>
        function validateForm() {
            var fullname = document.getElementById("fullname").value;
            var email = document.getElementById("email").value;
            var password = document.getElementById("password").value;
            var gender = document.getElementById("gender").value;
            var mobile_no = document.getElementById("mobile_no").value;
            var country = document.getElementById("country").value;
            var cast = document.getElementById("cast").value;
            var occupation = document.getElementById("occupation").value;
            var education = document.getElementById("education").value;
            var height = document.getElementById("height").value;
            var about = document.getElementById("about").value;

            // Regular expressions for email, password, and mobile number
            var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            var passwordRegex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$/;
            var mobileRegex = /^[0-9]{10}$/;

            if (fullname == "" || email == "" || password == "" || gender == "" || mobile_no == "" || country == "" || cast == "" || occupation == "" || education == "" || height == "" || about == "") {
                alert("All fields must be filled out");
                return false;
            }

            if (!email.match(emailRegex)) {
                alert("Please enter a valid email address");
                return false;
            }

            if (!password.match(passwordRegex)) {
                alert("Password must be at least 8 characters long and contain at least one number, one lowercase and one uppercase letter");
                return false;
            }

            if (!mobile_no.match(mobileRegex)) {
                alert("Please enter a valid 10-digit mobile number");
                return false;
            }

            return true;
        }
    </script>
    </head>

<body>
 
 

  
     
    <div class="img">
       <center>
            <div class="container">
                <h2>Register Here</h2>
                <form action="RegisterServlet" method="post">
                    <label for="fullname">Full Name</label>
                    <input type="text" id="fullname" name="fullname" required>

                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" required>

                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" required>

                    <label for="gender">Gender</label>
                    <select id="gender" name="gender" required>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                        <option value="other">Other</option>
                    </select>

                    <label for="dob">Mobile no.</label>
                    <input type="text" id="mobile_no" name="mobile_no" required>
                    <br><br>
                    <label for="country">Country</label>
                    <input type="text" id="country" name="country" required>

                    <label for="Cast">Cast</label>
                    <input type="text" id="cast" name="cost" required>

                    <label for="occupation">Occupation</label>
                    <input type="text" id="occuption" name="occuption" required>

                    <label for="education">Education</label>
                    <input type="text" id="education" name="Education" required>

                    <label for="height">Height (in cm)</label>
                    <input type="number" id="height" name="height" required>

                    <label for="about">About Yourself</label>
                    <textarea id="about" name="About" rows="4" required></textarea><br><br>

                   

                    <input type="submit" value="register" name="Register">
                 <center>   <h3>if already registered <a href="login.jsp"> Login </a>  </h2></center>
                 
               
                </form>
                
        </center>
         <% String error = request.getParameter("error");
           if (error != null && error.equals("1")) { %>
            <p style="color: red;">Registration failed. Please try again.</p>
        <% } %>
       
        <%-- Display error message if Register Successful --%>
        <% String rs = request.getParameter("registration");
            if (rs != null && rs.equals("success")) { %>
                <p style="color: green;">Your Registration is Successful. Please Login.</p>
        <% } %>
        
        
    </div>
    
</div>

</body>

</html>

