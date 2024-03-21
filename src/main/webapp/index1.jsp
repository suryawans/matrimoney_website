<html>

<head>
    <title>
        About us
    </title>
    <link rel="stylesheet" href="Aboutus.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


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
   

        </div>
    
   
   
    <footer class="footer-distributed">
        <div class="footer-left">
            <h3>vivahvrundh<span>developer</span></h3>
            
            <p class="footer-links">
                <a href="index.jsp">Home</a>
              <a href="Services.jsp">Services</a>
                <a href="Aboutus.jsp">AboutUs</a>
                 <a href="contactus.jsp">Contact</a>
                  
            </p>
            <p class="footer-company-name">Copyright <strong> &copy; 2024vivahvrundh developer</strong> All rights reserved</p>
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
                <span>vivahvrundh  Bride-Groom Indicator Center</span>

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
     </script>
     
</body>

</html>