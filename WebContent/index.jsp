
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script src="js/jquery.autocomplete.js"></script>
<script>
jQuery(function(){
$("#country").autocomplete("list.jsp");
});
</script>
<script type="text/javascript">
function gotopage(selval){
	
var value = selval.options[selval.selectedIndex].value;
window.location.href=value;
}
</script>
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
   top: 20px; 
   left: 150px; 
   width: 100%; 
   color: white;
   font-size: 30px;
}
</style>


</head>
<BODY style="background-color: #F0F0F0;">
<div class="image">

      <img src="images/ui/header.png" alt="" width="101%"/>
      
      
      <h2  > Reporting</h2>
</div>
<br><br><center>
<br><br>
<iframe width="300" height="300" style="position: absolute;top: 20%;left: 10%;"
src="https://www.youtube.com/embed/KwStciTu8Cc">
</iframe> 

 

<div style="position: absolute; right:200; top:120">

<font size="5"  face="times roman">Existing Users Login</font> 


  <form action="loginprocess.jsp" method="post">
<font size="4" color="light blue"  face="times roman"></font> 
<br>
<select id ="loginas" onchange="gotopage(this)" style="height: 20; width: 170;">
<option>Login As</option>
<option value ="#">Provider</option>
<option value ="patientlogin.jsp">Patient</option>
</select>
<br><br>
  <div >
<input type="text" name="email" height="40" value="Enter Username" style="width: 170;height: 40;"/><br/>
</div>
<font size="4" color="light blue"  face="times roman">Password:</font> 
<br>
<input type="password" name="pass" style="width: 170;height: 40;" value="" /><br/><br>
<input type="submit" value="Sign In" style="font-size: medium;color: white; background-color:blue; width: 170; height: 40; "/>
</form>
</div>

</BODY>
</html>

