<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width">
        <title>Guitars | Apollo Music Store</title>
        <link rel="icon" type="image/x-icon" href="images/ApolloLogoOnly.png"/>
        <link href="CSS/products-instru.css" rel="stylesheet"/>
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
                <a href="products-guitar.jsp" class="guitar" id="sidebutton-highlight">Guitars</a>
                <a href="products-bass.jsp" class="bass-guitar" id="sidebutton">Bass Guitars</a>
                <a href="products-drums.jsp" class="drums" id="sidebutton">Drums</a>
                <a href="products-keyboard.jsp" class="keyboards" id="sidebutton">Keyboards</a>
                <a href="products-amps.jsp" class="amplifiers" id="sidebutton">Amplifiers</a>
                <a href="" class="accessories" id="sidebutton">Accessories</a>
            </div>
            <div class="main-page">
                <h1 id="main-title">Guitars</h1>
                <div class="products">
                    <div class="product1" id="product-container">
                        <a href="item-g1.jsp">
                        <img
                            alt="whitestrat"
                            src="images/1-guitar/g1.png"
                            class="product-image"
                        />
                        </a>
                    </div>
                    <div class="product2" id="product-container">
                        <a href="item-g2.jsp">
                        <img
                            alt="timhensonguitar"
                            src="images/1-guitar/g2.png"
                            class="product-image"
                        />
                        </a>
                    </div>
                    <div class="product3" id="product-container">
                        <a href="blank error">
                        <img
                            alt="telecaster"
                            src="images/1-guitar/g3.png"
                            class="product-image"
                        />
                        </a>
                    </div>
                    <div class="product4" id="product-container">
                        <a href="blank error">
                        <img
                            alt="martinco"
                            src="images/1-guitar/g4.png"
                            class="product-image"
                        />
                        </a>
                    </div>
                </div>
                <div class="products-SMALL">
                    <div class="product3-SMALL" id="product-container">
                        <a href="blank error">
                        <img
                            alt="telecaster"
                            src="images/1-guitar/g3.png"
                            class="product-image"
                        />
                        </a>
                    </div>
                    <div class="product4-SMALL" id="product-container">
                        <a href="blank error">
                        <img
                            alt="martinco"
                            src="images/1-guitar/g4.png"
                            class="product-image"
                        />
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>