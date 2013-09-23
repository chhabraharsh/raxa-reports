
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN"
   "http://www.w3.org/TR/html4/frameset.dtd">

<HTML>
<HEAD>
<TITLE>Reports</TITLE>
<script type="text/javascript" src="/BirtIntegration/js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="/BirtIntegration/js/report.js"> </script>
<script language ="javascript">
// Script to download report format
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
</style>
</HEAD>
<BODY style="background-color: #F0F0F0;">
<!--  <div class="image"> <!-- This code is same as in header.jsp

      <img src="../images/ui/header.png" alt="" width="101%"/>
      <h4 align="right" ><a href="index.jsp" style="color: white; ">Logout</a>  </h4>
      <h3 align="right"><b >Hello, <%= session.getAttribute("username") %></b></h3>
      <h3 align="left"> Reporting</h3>
</div>-->
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



			<legend >
				<b style="color:#84A9CF">Select Reports</b>
			</legend>
				<ol>
				<li> <a href="#" onclick="generateReport('First_Report.rptdesign')" >Test Report</a></li>
				<li> <a href="outpatients.jsp" onclick="generateReportViewPatients('view_patients.rptdesign',<%= session.getAttribute( "provider_id" ) %>)" >My Outpatients</a></li>
			<!--      <li> <a href="jsp/NewFile.jsp">View providers Patients Report</a></li>-->
				<li> <a href="drugs.jsp"   onclick="generateReportlog('daily_log.rptdesign',<%= session.getAttribute( "provider_id" ) %>)" >Daily log</a></li> 
				 
		<!--  	<li>	<a href="jsp/drug.jsp" onclick="generateReportViewDrugs('drugorders.rptdesign',<%= session.getAttribute( "provider_id" ) %>)" >My Drug Orders</a></li>-->
			
			<li> <a href="drug.jsp" onclick="generateReportViewPatients('view_patients.rptdesign',<%= session.getAttribute( "provider_id" ) %>)" >My Drug Orders</a></li>
			<!--  	<li> <a href="jsp/patientdrug.jsp" >Drug Report</a></li>-->
				<li> <a href="patientsreport.jsp" >Patient's Reports</a></li>
				<li><a href="#" onclick="generateReportonobs('obs.rptdesign',<%= session.getAttribute( "provider_id" ) %>)" >Oberservations Made</a></li>
				</ol>
			</fieldset>
		</div>
		
		<fieldset style="background-color: white;">
			<legend>
				<b style="color:#84A9CF"></b>
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