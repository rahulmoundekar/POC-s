var queryObject = "";
	var queryObjectLen = "";
	$.ajax({
		type : 'POST',
		url : 'piechart',
		dataType : 'json',
		success : function(data) {
			queryObject = eval('(' + JSON.stringify(data) + ')');
			queryObjectLen = queryObject.Messages.length;
		},
		error : function(xhr, type) {
			alert('server error occoured')
		}
	});
	google.load("visualization", "1", {
		packages : [ "corechart" ]
	});
	google.setOnLoadCallback(drawChart);
	function drawChart() {
		var data = new google.visualization.DataTable();
		data.addColumn('string', 'name');
		data.addColumn('number', 'id');
		for (var i = 0; i < queryObjectLen; i++) {
			var name = queryObject.Messages[i].name;
			var id = queryObject.Messages[i].id;
			data.addRows([ [ name, parseInt(id) ] ]);
		}
		var options = {
			'title' : 'Employee Information',
			'is3D' : true,
			'width':400,
            'height':300
		};
		var chart = new google.visualization.PieChart(document
				.getElementById('chart_div'));
		chart.draw(data, options);
	}