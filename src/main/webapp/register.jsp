<html>

<head>
    <title>Matrimone website </title>
    <link rel="stylesheet" href="register.css">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"></head>

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
                    <h3>if already registered <a href="login.jsp"> Login </a>  </h2>
                 
               
                </form>
                
                
        </center>
      if   <% String error = request.getParameter("error");
           if (error != null && error.equals("1")) { %>
            <p style="color: red;">Registration failed. Please try again.</p>
        <% } %>
        else
        <%-- Display error message if Register Successful --%>
        <% String rs = request.getParameter("registration");
            if (rs != null && rs.equals("success")) { %>
                <p style="color: green;">Your Registration is Successful. Please Login.</p>
        <% } %>
        
        
    </div>



</body>

</html>