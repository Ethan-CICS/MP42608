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
        <header>
            <nav>
                <img src="images/navbar/ApolloLogo.png" class="logo">
            </nav>
        </header>
        <div class="greetingBanner">
        <div class="main-body">
          <h1>Login</h1>
          <div class="container2">
            <form action="LoginServlet" method="get">
                <label for="username" class="login-title">Username</label>
                <input type="text" name="user" class="login-form"/><br/><br/>
                
                <label for="password" class="login-title"> Password </label>
                <input type="password" name="pass" class="login-form"></input><br/><br/>
                <div class="button-container">
                <input class="button-design" type="submit" value="LOGIN">
                </div>
            </form>
          </div>
        </div>
        </div>
    </body>
</html>