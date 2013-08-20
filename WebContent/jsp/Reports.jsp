
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN"
   "http://www.w3.org/TR/html4/frameset.dtd">

<HTML>
<HEAD>
<TITLE>Reports</TITLE>
<script type="text/javascript" src="/BirtIntegration/js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="/BirtIntegration/js/report.js"> </script>
<script language ="javascript">
function myfunction(){
var theSelection = document.getElementById("sel1")[0].value;

if (theSelection ==0){
	generateReport('First_Report.rptdesign');
}
elseif (theSelection ==2){
function1()
}
elseif (theSelection ==3){
function2()
}
}
function0(){
alert("I was called from function 0")
}
function1(){
alert("I was called from function 1")
}
function2(){
alert("I was called from function 2")
}

</script>
</HEAD>
<BODY style="background-color: #F0F0F0;">
<div><h5  style="text-align: right;"><b >Hello, <%= session.getAttribute("username") %></b></h5><a href="index.jsp" >Logout</a> 
<img alt="" src="images/logo.PNG" height=80 />
</div>
<img alt="" src="images/header.JPG" width="101%">
<div style="position: absolute; left:7%; top:10%">

<br>
</div>
<br>
	<div>
		<h3 align="center" style="color:#84A9CF">Raxa-Reporting</h3>
		
		<div style="float: left;width: 25%;">
			<fieldset style="background-color: white;">
			<form name="form2">
</form>

<form name ="form1">
<select id ="sel1" onchange ="myFunction()">
<option>Select Report</option>
<option value ="0">Test Report</option>
<option value ="1">View Patients Of Month</option>
<option value ="2">Drug Reports </option>
<option value ="3">Patient History</option>
<option value ="4">obesrvations Made</option>
<option value ="5">Patients With Disease</option>
</select>
</form>

			<legend >
				<b style="color:#84A9CF">Select Reports</b>
			</legend>
				<ul>
				<li> <a href="#" onclick="generateReport('First_Report.rptdesign')" >Test Report</a></li>
				<li> <a href="#" onclick="generateReportViewPatients('view_patients.rptdesign',<%= session.getAttribute( "provider_id" ) %>)" >My Outpatients</a></li>
			<!--      <li> <a href="jsp/NewFile.jsp">View providers Patients Report</a></li>-->
				<li> <a href="#" onclick="generateReport('daily_log.rptdesign')" >Daily log</a></li>
			<li>	<a href="#" onclick="generateReportViewDrugs('drugorders.rptdesign',<%= session.getAttribute( "provider_id" ) %>)" >My Drug Orders</a></li>
			<!--  	<li> <a href="jsp/patientdrug.jsp" >Drug Report</a></li>-->
				<li> <a href="jsp/patientsreport.jsp" >Patient's Reports</a></li>
				<li><a href="#" onclick="generateReportonobs('obs.rptdesign',<%= session.getAttribute( "provider_id" ) %>)" >Oberservations Made</a></li>
				</ul>
			</fieldset>
		</div>
		
		<fieldset style="background-color: white;">
			<legend>
				<b style="color:#84A9CF">Report Details:</b>
			</legend>
		
			<div id="downloadOptions" align="right">
				Download Report as:  
				<a href="#" onclick="downloadReport('pdf')" >pdf</a>,
				<a href="#" onclick="downloadReport('xls')" >xls</a>,
				<a href="#" onclick="downloadReport('doc')" >doc</a>,
					
			</div>
			
			<div id="reportData" style="height: auto; background-color: white;float: left;min-width: 70%;text-align: center;" align="center">
				<br>
				Reports will be loaded here when user selects report from left navigation.
			</div>
		</fieldset>
	</div>
</BODY>
</HTML>