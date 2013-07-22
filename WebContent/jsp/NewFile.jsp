

<!DOCTYPE html>
<HTML>
<HEAD>
<TITLE>Raxa-Reports</TITLE>
<script type="text/javascript" src="/BirtIntegration/js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="/BirtIntegration/js/report.js"> </script>

</HEAD>
<BODY style="background-color: #F0F0F0;">
	<div>
		<h3 align="center" style="color:#84A9CF">Monthly Report</h3>
		
		<div style="float: left;width: 25%;">
			<fieldset style="background-color: white;">
			
				<ul>
				<li> <a href="#" onclick="generateReport('First_Report.rptdesign')" >Test Report</a></li>
				<li> <a href="#" onclick="generateReportViewPatients('view_patients.rptdesign',50)">Patients Report</a></li>
				</ul>
			</fieldset>
		</div>
		
		
<form action="">
Provider ID: <input type="number"  id="provider_id" name="providerid" ></input>

<input id="clickme" type="button" value="submit" onclick= "generateReportViewPatients('view_patients.rptdesign',parseInt(document.getElementsByName('providerid'),10));" />
</form>
		
		
		
		
		<fieldset style="background-color: white;">
			<legend>
				<b style="color:#84A9CF">Report Details:</b>
			</legend>
		<br>
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