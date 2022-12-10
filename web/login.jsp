<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width">
        <title>Welcome! | Apollo Music Store</title>
        <link rel="icon" type="image/x-icon" href="images/ApolloLogoOnly.png"/>
        <link href="CSS/login.css" rel="stylesheet"/>
        <link href="CSS/navbar.css" rel="stylesheet"/>
    </head>
    <body>
        <% 
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Expires","0");
            
            if(session.getAttribute("newUsername") != null)
            {
                response.sendRedirect("index.jsp");
            }
            
        %>
        <header>
            <nav>
                <a href="index.jsp">
                <img src="images/navbar/ApolloLogo.png" class="logo">
                </a>
            </nav>
        </header>
        <div class="greetingBanner">
        <div class="main-body">
          <h1>Login</h1>
          <div class="container2">
            <form action="Login">
                <label for="username" class="login-title">Username</label>
                <input type="text" name="username" class="login-form" required/><br/><br/>
                
                <label for="password" class="login-title"> Password </label>
                <input type="password" name="password" class="login-form" required><br/><br/>
                <div class="button-container">
                <input class="button-design" type="submit" value="LOGIN">
                </div>
            </form>
          </div>
        </div>
        </div>
    </body>
</html>