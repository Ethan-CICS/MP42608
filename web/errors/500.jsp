<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="CSS/index.css" rel="stylesheet" />

  <title>Error 500</title>
  <style>
    body {
      margin: 0;
      background-color: black;
    }

    #errorContainer {
      margin: auto;
      margin-top: 100px;
      width: 100%;
      padding: 10px;
      text-align: center;
    }

    h1 {
      font-family: 'Mesa Grande', sans-serif;
      color: white;
    }

    h2 {
      font-family: 'Gothic A1', sans-serif;
      color: white;
    }

    #button {
      height: 70px;
      width: 300px;
      background: white;
      box-shadow: 5px 10px 10px 0 black;
      border: 3px solid gray;
      border-color: gray;
      border-radius: 5px;
      color: gray;
      padding: 15px 32px;
      font-size: 25px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 25px;
      transition: background 0.2s ease-out;
    }

    #button:hover {
      background: transparent;
    }
  </style>
</head>

<body>
  <div id="errorContainer">
    <h1 id="error-3-desc">The amps are still buzzing</h1>
    <h2 id="error-6-desc">Error 500 </h2>
    <h2 id="error-6-desc">Page Maintenance</h2>
    <br /><br /><br />
    <form method="get" action="index.jsp">
        <input type="submit" value="Back to Homepage" id="button">
    </form>
  </div>
</body>

</html>