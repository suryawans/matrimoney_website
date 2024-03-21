<html>

<head>
    <title>

        contact page
    </title>
    <link rel="stylesheet" href="contactus.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <meta name="viewport" content="width=device-width, initial-scale=1">

</head>

<body>
  <nav class="navbar">
    <div class="container">
      <div class="logo"><img src="logo1.png" alt="Matrimony Logo"> </div>
     
      <div class="toggle" onclick="toggleMenu()">&#9776;</div>
      <ul class="nav-links" id="nav-links">
        <li><a href="index1.jsp">Home</a></li>
        <li><a href="Aboutus.jsp">About us</a></li>
        <li><a href="Services.jsp">Services</a></li>
        
        <li><a href="contactus.jsp">Contact us</a></li>
      </ul>
    </div>
  </nav>
   
 
   
 
  
    <div class="img">
        <center>
            <h2>Get in Touch</h2>


            <div class="row">
                <div class="column" style="background-color:hsl(46, 37%, 25%);">
                    <h2>Near More Hospital Chinchwadgaon,Pune,Maharashtra</h2>
                    <a href="tel:9890233267"><i class="fa-solid fa-phone">9890233267</i></a>
                    <br>
                    <a href="tel:9420729111"><i class="fa-solid fa-phone">9420729111</i></a>
                    <br>
                    <br>
                    <i class="fa fa-envelope"> RUTUWORLD911@GMAIL.COM</i>

                </div>
                <div class="row">
                    <div class="column1" style="background-color:hsl(46, 75%, 32%);">
                        <h3>
                            Our other branches available in
                            <br>
                            <br>
                            Solapur,Sangli,Satara,Kolhapur
                        </h3>

                    </div>


                </div>
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m13!1m8!1m3!1d7562.155116315776!2d73.76757000000002!3d18.615581!3m2!1i1024!2i768!4f13.1!3m2!1m1!2zMTjCsDM2JzU2LjEiTiA3M8KwNDYnMTIuNSJF!5e0!3m2!1sen!2sin!4v1708688532592!5m2!1sen!2sin"
                    width="100%" height="320" style="border:0;" allowfullscreen="" loading="lazy"
                    referrerpolicy="no-referrer-when-downgrade">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">

                </iframe>
        </center>

    </div>
   <footer class="footer-distributed">
        <div class="footer-left">
            <h3>chinchkar<span>developer</span></h3>
            
            <p class="footer-links">
                <a href="index1.jsp">Home</a>
              <a href="Services.html">Services</a>
                <a href="Aboutus.html">AboutUs</a>
                 <a href="contactus.html">Contact</a>
                  
            </p>
            <p class="footer-company-name">Copyright <strong> &copy; 2024chinchkar developer</strong> All rights reserved</p>
        </div>
        <div class="footer-center">
            <div>
                <i class="fa-solid fa-location-dot"></i>
                <p><span>pimpri-chinchwad,Thergaon-phata pune</span>
                  
                </p>

            </div>
            <div>
             <i class="fa-solid fa-phone"></i>
                <p><span>9420729111 &nbsp  9890233267</span></p>

            </div>
            <div>
               <i class="fa-regular fa-envelope"></i>
               <p> <span><a href="#">RUTUWORLD911@GMAIL.COM</a></span>
</p>
            </div>
        </div>
        <div class="footer-right">
            <p class="footer-company-About">
                <span>Chinchkar Bride-Groom Indicator Center</span>

            </p>
            <div class="footer-icons">
                <a href="whatsapp:8605472437"><i class="fa-brands fa-whatsapp"></i></a>
                <a href="tel:8605473437"><i class="fa-solid fa-phone"></i></a>
                <a href=""><i class="fa-brands fa-square-instagram"></i></a>

            </div>
        </div>
    </footer>
      <script>
     function toggleMenu() {
  var navLinks = document.getElementById("nav-links");
  if (navLinks.style.display === "block") {
    navLinks.style.display = "none";
  } else {
    navLinks.style.display = "block";
  }
}
     
     
 const username = localStorage.getItem('email');
     if (email) {
       document.getElementById('email').textContent = email;
     }
     </script>
</body>

</html>