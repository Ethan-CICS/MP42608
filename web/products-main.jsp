<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width">
        <title>Products | Apollo Music Store</title>
        <link rel="icon" type="image/x-icon" href="images/ApolloLogoOnly.png"/>
        <link href="CSS/products-main.css" rel="stylesheet"/>
        <link href="CSS/navbar.css" rel="stylesheet"/>
        <link href="CSS/sidebar.css" rel="stylesheet"/>
    </head>
    <body>
        <header>
            <nav>
                <img src="images/navbar/ApolloLogo.png" class="logo">
                <ul class="nav-links">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="about-us.jsp">About Us</a></li>
                    <li><a href="products-main.jsp">Products</a></li>
                    <li><a href="login.jsp">Login</a></li>
                </ul>
                <form>
                    <img src="images/navbar/SearchIcon.png" class="searchIcon">
                    <input type="text" placeholder="Search" class="searchBar">
                    <input type="button" hidden />
                    </form>
            </nav>
        </header>
        <div class="content">
            <div class="sidebar">
                <a href="products-guitar.jsp" class="guitar" id="sidebutton">Guitars</a>
                <a href="products-bass.jsp" class="bass-guitar" id="sidebutton">Bass Guitars</a>
                <a href="products-drums.jsp" class="drums" id="sidebutton">Drums</a>
                <a href="products-keyboard.jsp" class="keyboards" id="sidebutton">Keyboards</a>
                <a href="products-amps.jsp" class="amplifiers" id="sidebutton">Amplifiers</a>
                <a href="" class="accessories" id="sidebutton">Accessories</a>
            </div>
            <div class="main-page">
                <h1 id="main-title">Products</h1>
                <div class="products">
                    <div class="featured-container1">
                        <img
                            alt="timhensonguitar"
                            src="images/featured.png"
                            class="featured1"
                        />
                    </div>
                    <div class="featured-container2">
                        <img
                            alt="joedartbass"
                            src="images/2-bass/b1.png"
                            class="featured2"
                            id="featuredRIGHT"
                        />
                        <img
                            alt="rolandkeyboard"
                            src="images/4-keyboard/p1.png"
                            class="featured3"
                            id="featuredRIGHT"
                        />
                    </div>
                    <div class="featured-container1-SMALL">
                        <img
                            alt="timhensonguitar-SMALL"
                            src="images/1-guitar/g2.png"
                            class="featured1-SMALL"
                        />
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>