

<!DOCTYPE html>
<HTML>
<HEAD>
<TITLE>Raxa-Reports</TITLE>
<script type="text/javascript" src="/BirtIntegration/js/jquery-1.7.1.js"></script>
<script type="text/javascript" src="/BirtIntegration/js/report.js"> </script>

<script language="text/javascript">
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
h2 { 
   position: absolute; 
   top: 25px; 
   left: 160px; 
   width: 100%; 
   color: white;
   font-size: 30px;
}
</style>
</HEAD>
<BODY style="background-color: #F0F0F0;">
<div class="image">

      <img src="images/ui/header.png" alt="" width="101%"/>
      
      
      <h2  > Reporting For Patients</h2>
</div>


	<div>
		<h3 align="center" style="color:#84A9CF"></h3>
		
		<div style="float: left;width: 25%;">
			
		</div>

		
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
						<div id="downloadOptions" align="right" style="width: 50;" >
				Download Report as: <select id ="format" onchange ="downloadformat(this)"  >
<option>Select Format</option>
<option value ="0">PDF</option>
<option value ="1">XLS</option>
<option value ="2">DOC </option>

</select> 
			
			<div id="reportData" style="height: auto; background-color: white;float: left;min-width: 70%;text-align: center;" align="center">
				<br>
				
			</div>
			
		</fieldset>
	</div>
</BODY>
</HTML>