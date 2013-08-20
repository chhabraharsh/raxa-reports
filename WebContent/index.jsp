
<html>
<head>


</head>
<BODY style="background-color: #F0F0F0;">
<img alt="" src="images/header.JPG" width="101%">
<div style="position: absolute; left:140; top:140">
<img alt="" src="images/logo.PNG" height="100" >
</div>
<div style="position: absolute; right:200; top:120">

<font size="5"  face="times roman">Existing Users</font> 


<form action="loginprocess.jsp">
<font size="4" color="light blue"  face="times roman">Username(Enter Username only)</font> 
<br>
<select id ="loginas">
<option>Login As</option>
<option value ="0">Provider</option>
<option value ="1">Admin</option>
<option value ="2">Patient</option>
</select>
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

