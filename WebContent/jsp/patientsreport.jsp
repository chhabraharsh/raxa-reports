

<!DOCTYPE html>
<HTML>
<HEAD>
<TITLE>Raxa-Reports</TITLE>
<script type="text/javascript" src="/BirtIntegration/js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="/BirtIntegration/js/report.js"> </script>

</HEAD>
<BODY style="background-color: #F0F0F0;">
	<div>
		<h3 align="center" style="color:#84A9CF">Patients History</h3>
		
		<div style="float: left;width: 25%;">
			
		</div>
		
		
<form action="" style="position:absolute; left:38%;">
Patient Identifier: <input type="text"  id="patient_identifier" name="patientidentifier" ></input>

<input id="clickme" type="button" value="submit" onclick= "generateReportpatientdetail('patientreport.rptdesign',generateReportpatientdetail('patientreport.rptdesign',document.getElementsByName('patientidentifier')[0].value));" />
</form>
		
		
		
		<br>
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