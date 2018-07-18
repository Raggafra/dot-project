var ret;
var tasks_fillGPS 	= 'Task_0fwxexu',
	tasks_fillName 	= 'Task_1qphwg9',
	tasks_fillHelp	= 'Task_0jkegnr',
	tasks_fake		= 'Task_0tzzern',
	tasks_fillClin  = 'Task_0bpq635',
	tasks_code 		= 'Task_1cnknom';
//01 First App Call
  function start(){
	console.log("Start an order");
	var jdata = JSON.stringify({"variables":
			{
			},
			"businessKey" : "dot-project"
		});
	$.post({
		url: 'http://localhost:8080/engine-rest/process-definition/key/UserProcess/start', 
		contentType: "application/json",
		data: jdata
		},function(data){
			console.log(data);
		}
	);
}
function requestInfo(){
    console.log("Continue order");
    var jdata = JSON.stringify({
        "messageName" : "shipmentInformationRequest"
			});
	$.post({
		url: 'http://localhost:8080/engine-rest/message', 
		contentType: "application/json",
		data: jdata
		},function(data){
			console.log(data);
		}
	);
}

  function sendShipmentInfo(){
    console.log("shipment info");
    var dcity = $('#d-city').val();
    var dcap = $('#d-CAP').val();
    var dadd = $('#d-add').val();
    var daddn = $('#d-addn').val();
    var dprov = $('#d-prov').val();
    var scity = $('#s-city').val();
    var scap = $('#s-cap').val();
    var sprov = $('#s-prov').val();
    var jdata = JSON.stringify({
        "messageName" : "shipmentInformation",
        "processVariables":{
    "destinationCity" : {"value" : dcity, "type": "String" },
	"destinationCAP"  : {"value" : dcap, "type": "String"},
	"destinationAddressStreet"  : {"value" : dadd, "type": "String"},
	"destinationAddressNumber"  : {"value" : daddn, "type": "Integer"},
	"destinationProvince"  : {"value" : dprov, "type": "String"},
	"senderCity"  : {"value" : scity, "type": "String"},
	"senderCAP"  : {"value" : scap, "type": "String"},
	"senderProvince"  : {"value" : sprov, "type": "String"}
        }
    })
    $.post({
		url: 'http://localhost:8080/engine-rest/message',
		contentType: 'application/json',
		data: jdata
	});
    
}

   function sendShipmentPackInfo(){
    console.log("shipment pack info");
    var pweight = $('#p-weight').val();
    var pheight = $('#p-height').val();
    var pwidht = $('#p-widht').val();
    var plenght = $('#p-lenght').val();
    var jdata = JSON.stringify({
        "messageName" : "packageDimensions",
        "processVariables":{
    "package weight" : {"value" : pweight, "type": "String" },
	"package height"  : {"value" : pheight, "type": "String"},
	"package widht"  : {"value" : pwidht, "type": "String"},
	"package lenght"  : {"value" : plenght, "type": "String"}
	 }
    })
    $.post({
		url: 'http://localhost:8080/engine-rest/message',
		contentType: 'application/json',
		data: jdata
	});
    
}


function confirmGPS(){
	console.log("Confirm GPS data");
	var gps = $('#u_gps').val();
	var jdata = JSON.stringify({
		"messageName" : "GPSConfirmation",
		"processVariables":{
			"U_GPS": {"value":gps,"type":"String"}
		}
	})
	$.post({
		url: 'http://localhost:8080/engine-rest/message',
		contentType: 'application/json',
		data: jdata
	});
}

function updateGPS(){
	console.log('Update GPS info on form');
	getVariable('U_GPS',function(data){
		$.get('http://localhost:8080/engine-rest/variable-instance/'+data[0].id,function(d){
			var u_gps = d.value;
			var jdata = JSON.stringify(
			{
				"variables":
					{
						"F_GPS":{"value":u_gps,"type":"String"}	
					}

			});
			completeTask(tasks_fillGPS,jdata);
		});
					
	});

}

function confirmName(){
	console.log("Confirm Name data");
	var name = $('#u_name').val();
	var jdata = JSON.stringify({
		"messageName" : "NameConfirmation",
		"processVariables":{
			"U_Name": {"value":name,"type":"String"}
		}
	})
	$.post({
		url: 'http://localhost:8080/engine-rest/message',
		contentType: 'application/json',
		data: jdata
	});
}

function updateName(){
	console.log('Update Name info on form');
	getVariable('U_Name',function(data){
		$.get('http://localhost:8080/engine-rest/variable-instance/'+data[0].id,function(d){
			var u_name = d.value;
			var jdata = JSON.stringify(
			{
				"variables":
					{
						"F_Name":{"value":u_name,"type":"String"}	
					}

			});
			completeTask(tasks_fillName,jdata);
		});
					
	});

}

function confirmHelp(){
	console.log("Confirm Help data");
	var help = $('#u_help').val();
	var jdata = JSON.stringify({
		"messageName" : "HelpTypeConfirmation",
		"processVariables":{
			"U_Help": {"value":help,"type":"String"}
		}
	})
	$.post({
		url: 'http://localhost:8080/engine-rest/message',
		contentType: 'application/json',
		data: jdata
	});
}

function updateHelp(){
	console.log('Update Help info on form');
	getVariable('U_Help',function(data){
		$.get('http://localhost:8080/engine-rest/variable-instance/'+data[0].id,function(d){
			var u_help = d.value;
			var jdata = JSON.stringify(
			{
				"variables":
					{
						"F_Help":{"value":u_help,"type":"String"}	
					}

			});
			completeTask(tasks_fillHelp,jdata);
		});
					
	});
}

function fake(isFake,func){
	if(isFake)
		console.log("Mark as FAKE");
	else
		console.log("Mark as NOT fake");
	var f = (isFake) ? true : false;
	var jdata = JSON.stringify(
	{
		"variables":
		{
			"fakeCall":{"value":f,"type":"Boolean"}	
		}

	});
	completeTask(tasks_fake,jdata,func);
	$('#fakes').hide();
}


function viewTasks(){
	$.get('http://localhost:8080/engine-rest/task?processDefinitionKey=psap1',function(data){
		console.log('Active tasks: ');
		for (var i = 0; i < data.length; i++)
			console.log(data[i].name)
	});
}

function destroy(){
	$.get('http://localhost:8080/engine-rest/process-instance',function(data){
		//console.log(data);
		for (var i = 0; i < data.length; i++) {
			id = data[i].id
			console.log("Deleting instance "+id);
			$.ajax({
				method: 'delete',
				url: 'http://localhost:8080/engine-rest/process-instance/'+id+'?skipCustomListeners=true&skipIoMappings=true&skipSubprocesses=true'
			});
		}
	});
}

function getVariable(v,func){
	$.get('http://localhost:8080/engine-rest/variable-instance?variableName='+v,func);
}

function getTaskIDFromName(taskName,func){
	$.get('http://localhost:8080/engine-rest/task?taskDefinitionKey='+taskName,func);//function(data){ return data[0].id;});
}

function completeTask(taskName,jdata,f = null){
	getTaskIDFromName(taskName,function(data){				
		$.post({
			url: 'http://localhost:8080/engine-rest/task/'+data[0].id+'/complete',
			contentType: 'application/json',
			data: jdata
		},f);
	});
}

function speakClin(n){
	var s = "U_Clin"+n;
	console.log("Clinical answer #"+n);
	var ans = $('#U_Clin'+n).val();
	var ary = {},pv={},v={};
	ary['messageName'] = "ResponseClinical";
	v['value'] = ans;
	v['type'] = 'String';
	pv['U_Clin'+n]= v;
	ary['processVariables'] = pv;
	var jdata = JSON.stringify(ary);
	$.post({
		url: 'http://localhost:8080/engine-rest/message',
		contentType: 'application/json',
		data: jdata
	});
}

function updateClin(n){
	console.log('Update clinical answer #'+n);
	getVariable('U_Clin'+n,function(data){
		$.get('http://localhost:8080/engine-rest/variable-instance/'+data[0].id,function(d){
			var ans = d.value;
			var o = {}, p = {}, q = {};
			q['value'] = ans;
			q['type'] = 'String';
			p['F_Clin'+n] = q;
			o['variables'] = p;
			var jdata = JSON.stringify(o);
			completeTask(tasks_fillClin,jdata);
		});
					
	});
}
