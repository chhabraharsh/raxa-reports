
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title></title>
<style  type="text/css">
.image { 
   position: relative; 
   width: 100%; /* for IE 6 */
}

h3 { 
   position: absolute; 
   top: 30px; 
   right: 0; 
   width: 100%; 
   color: white;
}
h4 { 
   position: absolute; 
   top: 0.01%; 
   left: 0; 
   width: 100%; 
   color: white;
   font-size: 15px;
}
h2 { 
   position: absolute; 
   top: 26px; 
   left: 11%; 
   width: 100%; 
   color: white;
   font-size: 30px;
}
</style>
</head>
<body style="background-color: #F0F0F0;">

<div class="image">

      <img src="../images/ui/header.png" alt="" width="101%"/>
      <h4 align="right" ><a href="../index.jsp" style="color: white; ">Logout</a>  </h4>
      <h3 align="right"><b >Hello, <%= session.getAttribute("username") %></b></h3>
      <h2  > Reporting</h2>
</div>
</body>
</html>
