

<!DOCTYPE html>
<HTML>
<HEAD>
<TITLE>Raxa-Reports</TITLE>
<script type="text/javascript" src="/BirtIntegration/js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="/BirtIntegration/js/report.js"> </script>
<script>
jQuery(function(){
$("#country").autocomplete("getname.jsp");
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
	<fieldset style="background-color: white;">
<form action="" style="position:absolute; left:38%;">
Patient Identifier: <input type="text"  id="patient_identifier" name="patientidentifier" ></input>
Enter Patients Name: <input type="text" id="country" name="c"/>

<input id="clickme" type="button" value="submit" onclick= "generateReportpatientdetail('patientreport.rptdesign',document.getElementsByName('patientidentifier')[0].value);" />
</form>
			<legend >
				<b style="color:#84A9CF">Select Reports</b>
			</legend>
				<ol>
				
				<li> <a href="#" onclick="generateReportViewPatients('view_patients.rptdesign',<%= session.getAttribute( "provider_id" ) %>)" >Past Three Months</a></li>
			    <li> <a href="Reports.jsp" >Main Menu</a></li>
			
			
			
			<!--      <li> <a href="jsp/NewFile.jsp">View providers Patients Report</a></li>
				<li> <a href="drugs.jsp" >Daily log</a></li>
			<li>	<a href="drug.jsp" " >My Drug Orders</a></li>
			<!--  	<li> <a href="jsp/patientdrug.jsp" >Drug Report</a></li>
				
				<a href="Reports.jsp">Home</a>	
				<li><a href="#" onclick="generateReportonobs('obs.rptdesign',<%= session.getAttribute( "provider_id" ) %>)" >Oberservations Made</a></li>
				-->
				</ol>
</fieldset>

		


		
		
		
		<br>
		<fieldset style="background-color: white;">
			<legend>
				<b style="color:#84A9CF">Report Details:</b>
			</legend>
		<br>
			<div id="downloadOptions" align="right" style="width: 50;" >
				Download Report as: <select id ="format" onchange ="downloadformat(this)"  >
<option>Select Format</option>
<option value ="0">PDF</option>
<option value ="1">XLS</option>
<option value ="2">DOC </option>

</select> 
			
			<div id="reportData" style="height: auto; background-color: white;float: left;10%;text-align: center;" align="center">
				<br>
				Reports will be loaded here when user selects report from left navigation.
			</div>
		</fieldset>
	</div>
</BODY>
</HTML>