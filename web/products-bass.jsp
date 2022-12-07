<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width">
        <title>Bass Guitars | Apollo Music Store</title>
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
                <a href="products-guitar.jsp" class="guitar" id="sidebutton">Guitars</a>
                <a href="products-bass.jsp" class="bass-guitar" id="sidebutton-highlight">Bass Guitars</a>
                <a href="products-drums.jsp" class="drums" id="sidebutton">Drums</a>
                <a href="products-keyboard.jsp" class="keyboards" id="sidebutton">Keyboards</a>
                <a href="products-amps.jsp" class="amplifiers" id="sidebutton">Amplifiers</a>
                <a href="" class="accessories" id="sidebutton">Accessories</a>
            </div>
            <div class="main-page">
                <h1 id="main-title">Bass Guitars</h1>
                 <div class="products">
                <%@page import="java.util.*"%>
                <%@page import="model.Product"%>
                <% 
                    int products = 0;
                    List<Product> productList = (ArrayList)request.getServletContext().getAttribute("productList");
                    products = productList.size();
                    for(int i = 0, j = 0; i < products; i++) {
                        Product inst = productList.get(i);
                        if(inst.getType().equals("Bass")) {
                            j++;
                            out.println("<div class=\"product" + Integer.toString(j) + "\" id=\"product-container\">");
                            out.println("<a href=\"item.jsp?id=" + i + "\"> <img alt=\"guitar\" src= \"" + inst.getThumb() + " \"class=\"product-image\"/></a>");
                            out.println("</div>");
                        }
                    }
                %>
                </div>
                <div class="products-SMALL">
                    <%
                        for(int i = 0, j = 0; i < products; i++) {
                            Product inst = productList.get(i);
                            if(inst.getType().equals("Bass")) {
                                j++;
                                if(j == 3 || j == 4) {
                                    out.println("<div class=\"product" + j + "-SMALL\" id=\"product-container\">");
                                    out.println("<a href=\"blank error\">");
                                    out.println("<img alt=\"telecaster\" src=\"" + inst.getThumb() + "\" class=\"product-image\"/></a>");
                                    out.println("</div>");
                                }
                            }
                        }
                    %>
                </div>
            </div>
        </div>
    </body>
</html>