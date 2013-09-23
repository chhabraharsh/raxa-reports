
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
$("#country").autocomplete("list.jsp");
});
</script>
<script type="text/javascript">
function gotopage(selval){
	
var value = selval.options[selval.selectedIndex].value;
window.location.href=value;
}
</script>


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
		<h3 align="center" style="color:#84A9CF"></h3>
		
		<div style="float: left;width: 25%;">
			<fieldset style="background-color: white;">
			<form name="form2">
</form>




<form>

Pick A Date:
<input type="date" name="date1" />

<input id="clickme" type="button" value="submit" onclick= "generateReportlog('daily_log.rptdesign',<%= session.getAttribute( "provider_id" ) %>,document.getElementsByName('date1')[0].value);" />
</form>
			<legend >
				<b style="color:#84A9CF">Select Reports</b>
			</legend>
				<ol>
				<li> <a href="#" onclick="generateReport('daily_log.rptdesign',<%= session.getAttribute( "provider_id" ) %>)" >Daily log</a></li>
			    <li> <a href="Reports.jsp" >Main Menu</a></li>
			<!-- 	<li> <a href="#" onclick="generateReportViewPatients('view_patients.rptdesign',<%= session.getAttribute( "provider_id" ) %>)" >Past Three Months</a></li>
			     <li> <a href="jsp/NewFile.jsp">View providers Patients Report</a></li>
				
			
			<li>	<a href="#" onclick="generateReportViewDrugs('drugorders.rptdesign',<%= session.getAttribute( "provider_id" ) %>)" >My Drug Orders</a></li>
		  	<li> <a href="jsp/patientdrug.jsp" >Drug Report</a></li>
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
			
					
			</div>
			
			<div id="reportData" style="height: auto; background-color: white;float: left;min-width: 70%;text-align: center;" align="center">
				<br>
				
			</div>
		</fieldset>
	</div>
</BODY>
</HTML>