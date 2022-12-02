<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Hi -->
<html lang="en">
  <head>
    <title>View More Info | Radiant Outlook</title>
    <meta property="og:title" content="pageMAIN2 - exported project" />
    <link rel="icon" type="image/x-icon" href="images/Valorant-Emblem.png"/>
    <link rel="stylesheet" href="CSS/welcome-info.css"/>
    <link rel="stylesheet" href="CSS/navbar.css"/>
  </head>
  <body>
       <% 
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Expires","0");
            
            if(session.getAttribute("newUsername") == null)
            {
                response.sendRedirect("index.html");
            }
            
        %>
    <div>
      <div class="container">
        <div class="navbar">
          <img
            alt="RadiantOutLookLogo"
            src="https://1000logos.net/wp-content/uploads/2022/09/Valorant-Emblem.png"
            class="navbar-img"
          />
          <span class="navbar-title">
            <a href="welcome-login.jsp">radiant outlook</a>
            <br/>
          </span>
          <a href="news-main.jsp" class="navbar-news" id="button">NEWS</a>
          <a href="team-main.jsp" class="navbar-teams" id="button">TEAMS</a>
          <a href="support-main.jsp" class="navbar-support" id="button">SUPPORT</a>
          <a href="index.jsp" class="navbar-support" id="button">LOGOUT</a>
          <a href="403.html">
          <img
            alt="image"
            src="${newUser.image}"
            class="chamber-pic"
          />
          </a>
        </div>
        <div class="main-content">
          <h1 class="title-h1">RADIANT OUTLOOK</h1>
          <img
            alt="roIMG"
            src="https://playvalorant.com/static/agents-group-31d7ce5a3637e45d8b25d2fd03159e6c.png"
            class="title-h1-img"
          />
          <h1 class="content-h1" id="welcome2-h1">
            <span>welcome back,
                <%  String userN="";
                if(session.getAttribute("newUsername") != null) {
                    userN = session.getAttribute("newUsername").toString();
                } %>
            <span class="user"><%=userN%></span>
            !</span>
          </h1>
          <span class="content-desc">
            <span>
              Radiant Outlook is happy to have you back!
            <br/>
              Click your profile picture (located above, top-right) to claim
              your daily awards.
            <br/>
              To know more about the website, click the button
              below.
            </span>
          </span>
          <a href="welcome-info.jsp" class="content-button" id="button">
            VIEW MORE INFO
          </a>
        </div>
        <div class="content-bg"  style="position:fixed">
          <img
            alt="BGwallpaper"
            src="https://wallpaperaccess.com/full/6192217.jpg"
            loading="eager"
            class="bg-img"
          />
          <img
            alt="RedFadeBG"
            src="images/red-bg.png"
            class="bg-fade"
          />
        </div>
      </div>
    </div>
            <form action="LogoutServlet">
            <br><input type="submit" value="logout">
        </form>
  </body>
</html>