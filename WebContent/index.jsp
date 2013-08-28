
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



</head>
<BODY style="background-color: #F0F0F0;">
<img alt="" src="images/header.JPG" width="101%">
<div style="position: absolute; left:140; top:140">
<img alt="" src="images/logo.PNG" height="100" >
</div>
<br><br><center>
<br><br>
 
Select    :
<input type="text" id="country" name="country"/>
 

<div style="position: absolute; right:200; top:120">

<font size="5"  face="times roman">Existing Users</font> 


  <form action="loginprocess.jsp" method="post">
<font size="4" color="light blue"  face="times roman">Username(Enter Username only)</font> 
<br>
<select id ="loginas" onchange="gotopage(this)" style="height: 20; width: 170;">
<option>Login As</option>
<option value ="#">Provider</option>
<option value ="#">Admin</option>
<option value ="patientlogin.jsp">Patient</option>
</select>
<br><br>
  <div >
<input type="text" name="email" height="40" style="width: 170;height: 40;"/><br/>
</div>
<font size="4" color="light blue"  face="times roman">Password</font> 
<br>
<input type="password" name="pass" style="width: 170;height: 40;" /><br/><br>
<input type="submit" value="Sign In" style="font-size: medium;color: white; background-color:blue; width: 170; height: 40; "/>
</form>
</div>

</BODY>
</html>

