
/**
 * This js contains two method 
 * 1)generateReport(reportName) : Requesting to load the report content in div.
 * 2)downloadReport(format): Downloading the current report in given format.
 */


//this will hold the currently loaded report name.
currentReportName="";
currentReporturl="";

	/**
	 * This method is responsible for loading the reports in the report div.
	 * @param localReportName
	 */

	function generateReport(reportName) {

		//	here relative url is given if relative url is not working try giving full url
		var reporturl ="/BirtIntegration/loadReport?ReportName="+reportName+"&ReportFormat=html";

		$("#reportData").html("Loading...<br><img src='/BirtIntegration/images/loading.gif' align='middle' >");

        $('#reportData').load(reporturl ,function(response, status, xhr) {
        	
          if (status == "error") {
		    var msg = "Sorry but there was an error getting details ! ";
			$("#reportData").html(msg + xhr.status + " " + xhr.statusText);
		  }
	    });
        
        currentReportName=reportName;
        currentReporturl=reporturl;
	}

//2.// if I am commenting this funtion,everythings works fine. all funtion getting called.
	//but on remove it from comments getting funtion not define for all
	function generateReportpatientdetailwithobs(reportName,provider,obs,startdate,enddate)
	{
		////&MyParam=ParamValue&invokesubmit=true
		//	here relative url is given if relative url is not working try giving full url
		//provider=24;
//		var test=user.permission;
		//test=provider;
		console.log(reportName);

		console.log(provider);

		console.log(obs);
		console.log(startdate);
		console.log(enddate);

		var reporturl ="/BirtIntegration/loadReport?ReportName="+reportName+"&provider_id="+provider+"&obs="+obs+"&startdate="+startdate+"&ReportFormat=html";
	//	console.log(identifier);
		$("#reportData").html("Loading...<br><img src='/BirtIntegration/images/loading.gif' align='middle' >");

	    $('#reportData').load(reporturl ,function(response, status, xhr) {
	    	
	      if (status == "error") {
		    var msg = "Sorry but there was an error getting details ! ";
			$("#reportData").html(msg + xhr.status + " " + xhr.statusText);
		  }
	    });
	    
	    currentReportName=reportName;
	    currentReporturl=reporturl;


	}
	
//3.	
	function generateReportViewPatients(reportName,provider) {
		////&MyParam=ParamValue&invokesubmit=true
		//	here relative url is given if relative url is not working try giving full url
		//provider=24;
	//	var test=user.permission;
		//test=provider;
		console.log(provider);
	//	document.write(provider);


		var reporturl ="/BirtIntegration/loadReport?ReportName="+reportName+"&provider_id="+provider+"&ReportFormat=html";

		$("#reportData").html("Loading...<br><img src='/BirtIntegration/images/loading.gif' align='middle' >");

        $('#reportData').load(reporturl ,function(response, status, xhr) {
        	
          if (status == "error") {
		    var msg = "Sorry but there was an error getting details ! ";
			$("#reportData").html(msg + xhr.status + " " + xhr.statusText);
		  }
	    });
        
        currentReportName=reportName;
        currentReporturl=reporturl;
	}
	//3.
	function generateReportViewDrugsspecific(reportName,provider,drug) {
		////&MyParam=ParamValue&invokesubmit=true
		//	here relative url is given if relative url is not working try giving full url
		//provider=24;
	//	var test=user.permission;
		//test=provider;
		console.log(provider);
		console.log(drug);
	//	document.write(provider);


		var reporturl ="/BirtIntegration/loadReport?ReportName="+reportName+"&provider_id="+provider+"&drug="+drug+"&ReportFormat=html";

		$("#reportData").html("Loading...<br><img src='/BirtIntegration/images/loading.gif' align='middle' >");

        $('#reportData').load(reporturl ,function(response, status, xhr) {
        	
          if (status == "error") {
		    var msg = "Sorry but there was an error getting details ! ";
			$("#reportData").html(msg + xhr.status + " " + xhr.statusText);
		  }
	    });
        
        currentReportName=reportName;
        currentReporturl=reporturl;
	}

	function generateReportViewDrugs(reportName,provider) {
		////&MyParam=ParamValue&invokesubmit=true
		//	here relative url is given if relative url is not working try giving full url
		//provider=24;
	//	var test=user.permission;
		//test=provider;
		console.log(provider);
	//	document.write(provider);


		var reporturl ="/BirtIntegration/loadReport?ReportName="+reportName+"&provider_id="+provider+"&ReportFormat=html";

		$("#reportData").html("Loading...<br><img src='/BirtIntegration/images/loading.gif' align='middle' >");

        $('#reportData').load(reporturl ,function(response, status, xhr) {
        	
          if (status == "error") {
		    var msg = "Sorry but there was an error getting details ! ";
			$("#reportData").html(msg + xhr.status + " " + xhr.statusText);
		  }
	    });
        
        currentReportName=reportName;
        currentReporturl=reporturl;
	}
	function generateReportonobs(reportName,provider) {
		////&MyParam=ParamValue&invokesubmit=true
		//	here relative url is given if relative url is not working try giving full url
		//provider=24;
	//	var test=user.permission;
		//test=provider;
	//	console.log(provider);
	//	document.write(provider);


		var reporturl ="/BirtIntegration/loadReport?ReportName="+reportName+"&provider_id="+provider+"&ReportFormat=html";

		$("#reportData").html("Loading...<br><img src='/BirtIntegration/images/loading.gif' align='middle' >");

        $('#reportData').load(reporturl ,function(response, status, xhr) {
        	
          if (status == "error") {
		    var msg = "Sorry but there was an error getting details ! ";
			$("#reportData").html(msg + xhr.status + " " + xhr.statusText);
		  }
	    });
        
        currentReportName=reportName;
        currentReporturl=reporturl;
	}

	function generateReportlog(reportName,provider,date) {
		////&MyParam=ParamValue&invokesubmit=true
		//	here relative url is given if relative url is not working try giving full url
		//provider=24;
	//	var test=user.permission;
		//test=provider;
		console.log(provider);
		console.log(date);
		console.log(reportName);
	//	document.write(provider);


		var reporturl ="/BirtIntegration/loadReport?ReportName="+reportName+"&provider_id="+provider+"&date="+date+"&ReportFormat=html";

		$("#reportData").html("Loading...<br><img src='/BirtIntegration/images/loading.gif' align='middle' >");

        $('#reportData').load(reporturl ,function(response, status, xhr) {
        	
          if (status == "error") {
		    var msg = "Sorry but there was an error getting details ! ";
			$("#reportData").html(msg + xhr.status + " " + xhr.statusText);
		  }
	    });
        
        currentReportName=reportName;
        currentReporturl=reporturl;
	}


	function generateReportpatientdetail(reportName,identifier) {
		////&MyParam=ParamValue&invokesubmit=true
		//	here relative url is given if relative url is not working try giving full url
		//provider=24;
	//	var test=user.permission;
		//test=provider;
		console.log(identifier);
		//identifier=toString(identifier);
		console.log(identifier);
		console.log(identifier);
	//	document.write(provider);


		var reporturl ="/BirtIntegration/loadReport?ReportName="+reportName+"&identifier="+identifier+"&ReportFormat=html";
		console.log(identifier);
		$("#reportData").html("Loading...<br><img src='/BirtIntegration/images/loading.gif' align='middle' >");

        $('#reportData').load(reporturl ,function(response, status, xhr) {
        	
          if (status == "error") {
		    var msg = "Sorry but there was an error getting details ! ";
			$("#reportData").html(msg + xhr.status + " " + xhr.statusText);
		  }
	    });
        
        currentReportName=reportName;
        currentReporturl=reporturl;
	}
// gamerate specific obs

	
	
// to ganerate bills
	function generateReportpatientbills(reportName,identifier) {
		////&MyParam=ParamValue&invokesubmit=true
		//	here relative url is given if relative url is not working try giving full url
		//provider=24;
	//	var test=user.permission;
		//test=provider;
		console.log(identifier);
		//identifier=toString(identifier);
		console.log(identifier);
		console.log(identifier);
	//	document.write(provider);


		var reporturl ="/BirtIntegration/loadReport?ReportName="+reportName+"&identifier="+identifier+"&ReportFormat=html";
		console.log(identifier);
		$("#reportData").html("Loading...<br><img src='/BirtIntegration/images/loading.gif' align='middle' >");

        $('#reportData').load(reporturl ,function(response, status, xhr) {
        	
          if (status == "error") {
		    var msg = "Sorry but there was an error getting details ! ";
			$("#reportData").html(msg + xhr.status + " " + xhr.statusText);
		  }
	    });
        
        currentReportName=reportName;
        currentReporturl=reporturl;
	}






	/**
	 * Download report function
	 * 
	 * @param format
	 */
	function downloadReport(format){

		if(currentReportName==""){
			alert("Please Select the report.");
			return;
		}
		//here relative url is given if relative url is not working try giving full url
		//var reporturl ="/BirtIntegration/loadReport?ReportName="+currentReportName+"&provider_id="+provider+"&ReportFormat="+format;
		var reporturl = currentReporturl.substring(0,currentReporturl.length-5)+"="+format;
		window.location.href = reporturl;

	}