
<!DOCTYPE html>

<HTML>
<HEAD>
<TITLE>Raxa Reports</TITLE>
<script type="text/javascript" src="/BirtIntegration/js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="/BirtIntegration/js/report.js"> </script>
<link rel="stylesheet" type="text/css" href="/BirtIntegration/css/style.css" />
<script type="text/javascript" src="/BirtIntegration/js/jquery-1.4.2.min.js"></script>
<script src="/BirtIntegration/js/jquery.autocomplete.js"></script>
<script>
jQuery(function(){
$("#country").autocomplete("druglist.jsp");
});
</script>
<script type="text/javascript">
function gotopage(selval){
	
var value = selval.options[selval.selectedIndex].value;
window.location.href=value;
}

function downloadformat(selval)
{
	var formatselected = selval.options[selval.selectedIndex].value;
	if(formatselected=="0")
		{
		downloadReport('pdf');
		}
	else if(formatselected=="1")
		{
		downloadReport('xls');
		}
	else
		{
		downloadReport('doc');
		}
	
}
</script>



</HEAD>
<BODY style="background-color: #F0F0F0;">
<jsp:include page="header.jsp"></jsp:include>

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
<form>
Enter Drug Name:
<input type="text" id="country" name="country"/>
<br>

<input id="clickme" type="button" value="submit" onclick= "generateReportViewDrugsspecific('specificdrugorders.rptdesign',<%= session.getAttribute( "provider_id" ) %>,document.getElementsByName('country')[0].value);" />
</form>
			<legend >
				<b style="color:#84A9CF">Select Reports</b>
			</legend>
				<ol>
				<li>	<a href="#" onclick="generateReportViewDrugs('drugorders.rptdesign',<%= session.getAttribute( "provider_id" ) %>)" >Last Month's Drug Orders</a></li>
				<li> <a href="Reports.jsp" >Main Menu</a></li>
				<!--	<li> <a href="#" onclick="generateReportViewPatients('view_patients.rptdesign',<%= session.getAttribute( "provider_id" ) %>)" >My Outpatients</a></li>
		      <li> <a href="jsp/NewFile.jsp">View providers Patients Report</a></li>
				<li> <a href="drugs.jsp" onclick="generateReport('daily_log.rptdesign')" >Daily log</a></li>
			
			<!--  	<li> <a href="jsp/patientdrug.jsp" >Drug Report</a></li>
				<li> <a href="jsp/patientsreport.jsp" >Patient's Reports</a></li>
				<li><a href="#" onclick="generateReportonobs('obs.rptdesign',<%= session.getAttribute( "provider_id" ) %>)" >Oberservations Made</a></li>
				-->
				</ol>
			</fieldset>
		</div>
		
		<fieldset style="background-color: white;">
			<legend>
				<b style="color:#84A9CF">Report Details:</b>
			</legend>
		
				<div id="downloadOptions" align="right" style="width: 50;" >
				Download Report as: <select id ="format" onchange ="downloadformat(this)"  >
<option>Select Format</option>
<option value ="0">PDF</option>
<option value ="1">XLS</option>
<option value ="2">DOC </option>

</select> 
			
					
			
			<div id="reportData" style="height: auto; background-color: white;float: left;min-width: 70%;text-align: center;" align="center">
				<br>
				Reports will be loaded here when user selects report from left navigation.
			</div>
		</fieldset>
	</div>
</BODY>
</HTML>