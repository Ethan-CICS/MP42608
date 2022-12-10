<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width">
        <title>Welcome! | Apollo Music Store</title>
        <link rel="icon" type="image/x-icon" href="images/ApolloLogoOnly.png"/>
        <link href="CSS/index.css" rel="stylesheet"/>
        <link href="CSS/navbar.css" rel="stylesheet"/>
    </head>
    <body>
        
        <%@include file="navbar.jsp" %>
        <div class="greetingBanner">
            <%
                if(session.getAttribute("newUsername") == null) {
                    out.println("<h1>Welcome to Apollo!</h1>");
                } else {
                    out.println("<h1>Welcome to back to Apollo, " + session.getAttribute("newUsername") + "!</h1>");
                }
            
            %>
            <div class="button-container">
                <form action="products-main.jsp"><button type="submit" class="button-design">SHOP NOW</button></form>
            </div>
        </div>
    </body>
</html>