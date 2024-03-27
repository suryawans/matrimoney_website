<html>

<head>
    <title>Matrimoney website </title>
    <link rel="stylesheet" href="login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>

<body>
  
 

  

    <div class="img">
        <center>
            <div class="container">
                <div class="row">
                    <div class="col-md-6 offset-md-3">
                        <div class="login-container">
                            <h2 class="text-center mb-4">Login</h2>
                            <form action="LoginServlets" method="post">
                                <div class="form-group">
                                    <label for="username">E-mail Id</label>
                                    <input type="text" class="form-control" id="username" placeholder="Enter username">
                                </div>
                                <br>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input type="password" class="form-control" id="password"
                                        placeholder="Enter password">
                                </div>
                                <br>
                                <button type="submit" class="btn btn-primary btn-block">Login</button>
                                
                            </form>
                        </div>
                       
                         <%-- Display error message if login fails --%>
        <%-- Display error message if login fails --%>
        
        
      
     
                 
                    </div>
                </div>
            </div>
        </center>
    </div>
    
</body>

</html>