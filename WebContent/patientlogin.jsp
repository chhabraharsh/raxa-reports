

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
<h4>* Use patient Identifier Number NEW98342</h4>		
		
<form action="#">		
<font size="4" color="light blue"  face="times roman">Your Registration No</font> 
<br>
<div >
<input type="text" name="patientidentifier" height="40" style="width: 170;height: 40;"/><br/>
</div>
<font size="4" color="light blue"  face="times roman">D.O.B</font> 
<br>
<input type="date" name="dob" style="width: 170;height: 40;" /><br/>
<font size="4" color="light blue"  face="times roman">First Name</font> 
<br>

<input type="text" name="firstname" height="40" style="width: 170;height: 40;"/><br/>
<input type="submit" value="Ganerate Report" style="font-size: medium;color: white; background-color:blue; width: 170; height: 40;" onclick= "generateReportpatientdetail('patientreport.rptdesign',document.getElementsByName('patientidentifier')[0].value);" />
<input type="submit" value="My Bills" style="font-size: medium;color: white; background-color:blue; width: 170; height: 40;" onclick= "generateReportpatientbills('patientsbill.rptdesign',document.getElementsByName('patientidentifier')[0].value);" />
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