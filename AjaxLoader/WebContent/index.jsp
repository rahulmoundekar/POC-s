<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="stylee.css">

<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript" src="message_box.js"></script>
<link rel="stylesheet" type="text/css" href="dialog.css"/>
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="jquery.reveal.js"></script>
<script type="text/javascript" src="util.js"></script>

<script type="text/javascript">
	function waiting_effect_on() {
		/*	$("#loadingImage").show();
		
		 $("body").css("opacity",".40");
		 $(".CompStylecal").css("opacity",".40");*/
		$('#waiting_effect_div').reveal({
			animation : 'fade',
			animationspeed : 1,
			closeonbackgroundclick : false,
			dismissmodalclass : 'close'
		});
	}
	function msg_box(message, msgBox_type, callback) {

		var Box_id = null, lbl_id1 = null, lbl_id2 = null, btn_id = null;

		switch (msgBox_type) {
		case 'A':
		case 'a':
			Box_id = 'alert_box';
			lbl_id1 = 'alert_box_lbl1';
			lbl_id2 = 'alert_box_lbl2';
			btn_id = 'ok_btn';
			break;
		case 'C':
		case 'c':
			Box_id = 'confirm_box';
			lbl_id1 = 'confirm_box_lbl1';
			lbl_id2 = 'confirm_box_lbl2';
			btn_id = 'yes_btn';
			break;
		case 'P':
		case 'p':
			Box_id = 'prompt_box';
			lbl_id1 = 'prompt_box_lbl';
			btn_id = 'prompt_ok_btn';

			break;
		}
		$("#" + lbl_id1).text("");
		if (lbl_id2 != null) {
			$("#" + lbl_id2).text("");
		}

		if (message.indexOf('\n') != -1) {
			var index = message.indexOf('\n');
			var msg1 = message.substring(0, index);
			var msg2 = message.substring(index + 1, message.length);

			$('#' + lbl_id1).text(msg1);

			if (msgBox_type != 'p' && msgBox_type != 'P') {
				$('#' + lbl_id2).text(msg2);
			}
		} else {
			$('#' + lbl_id1).text(message);
		}
		$('#' + Box_id).reveal({
			animation : 'fade',
			animationspeed : 1,
			closeonbackgroundclick : false,
			dismissmodalclass : 'close'
		});

		document.getElementById(btn_id).focus();
		document.getElementById('prompt_txtBox').select();
		document.getElementById('prompt_txtBox').focus();

		$("#ok_btn").bind('click').click(function() {
			$("#yes_btn").unbind("click");
			$("#no_btn").unbind("click");
			$("#ok_btn").unbind("click");
			$("#prompt_ok_btn").unbind("click");

			callback('ok');
		});

		$("#yes_btn").bind('click').click(function() {
			$("#yes_btn").unbind("click");
			$("#no_btn").unbind("click");
			$("#ok_btn").unbind("click");
			$("#prompt_ok_btn").unbind("click");
			callback('yes');
		});

		$("#no_btn").bind('click').click(function() {
			$("#yes_btn").unbind("click");
			$("#no_btn").unbind("click");
			$("#ok_btn").unbind("click");
			$("#prompt_ok_btn").unbind("click");
			callback('no');
		});

		$("#prompt_ok_btn").bind('click').click(function() {
			$("#yes_btn").unbind("click");
			$("#no_btn").unbind("click");
			$("#ok_btn").unbind("click");
			$("#prompt_ok_btn").unbind("click");

			callback($("#prompt_txtBox").val());
		});
	}

	function ok_on_enter(event) {
		if (event.keyCode == 13) {
			$("#prompt_ok_btn").click();

		}
	}
	function waiting_effect_off() {
		/*$("body").css("opacity","20");
		$("#loadingImage").hide();
		$(".CompStylecal").css("opacity","20");*/
		$('#waiting_effect_div').trigger('reveal:close');
	}
	function synData() {
		msg_box(
				'It will take 5-6 minutes to complete.\nDo you want to continue?',
				'C', function(return_val) {
					if (return_val == "yes") {
						waiting_effect_on();
						$.ajax({
							type : "GET",
							url : "SyncServlet",
							data : {
								userName : $("#userName").val()
							},
							cache : false,
							success : function(data) {

								waiting_effect_off();
								msg_box(data, 'A', function() {

								});
							}
						});
					}
				});
	}
</script>
</head>
<body>
	<div id="waiting_effect_div">
		<div id="heading">
			<div class="waitingHeader"></div>
			Please wait
			<div id="dialogcontent" style="overflow: auto;">
				<br /> <a href="#"><img src="images/gears.gif"
					style="border: 0" /></a>
			</div>
		</div>


		<div id="dialogcontent" style="overflow: auto;"></div>
	</div>

	<!-- /***************************************************alert div**********************************************************/ -->

	<div id="alert_box">
		<div id="heading">
			<div class="headerimg"></div>
			Message
		</div>


		<div id="dialogcontent" style="overflow: auto;">
			<p>
				<label id="alert_box_lbl1"></label><br></br>
				<label id="alert_box_lbl2"></label>
			</p>

			<a href="#" class="buttond gray close" id="ok_btn"><img
				src="images/tick.png" style="border: 0" />OK</a>
		</div>
	</div>


	<div id="confirm_box">
		<div id="heading">
			<div class="headerimg2"></div>
			Confirm
		</div>

		<div id="dialogcontent" style="overflow: auto;">
			<p>
				<label id="confirm_box_lbl1"></label><br></br>
				<label id="confirm_box_lbl2"></label>
			</p>

			<a href="#" id="yes_btn" class="buttond green close"><img
				src="images/tick.png" style="border: 0" />Yes</a> <a href="#"
				id="no_btn" class="buttond red close"><img
				src="images/cross.png" style="border: 0" />No</a>
		</div>
	</div>


	<div id="prompt_box">
		<div id="heading">
			<label id="prompt_box_lbl"></label>
		</div>

		<div id="dialogcontent" style="overflow: auto;">
			<p id="dyntxtbox">
				<input type="text" id="prompt_txtBox" />
			</p>

			<a href="#" class="buttond green close" id="prompt_ok_btn"><img
				src="images/tick.png" style="border: 0" />OK</a> <a href="#"
				class="buttond red close" id="prompt_no_btn"><img
				src="images/cross.png" style="border: 0" />Close</a>
		</div>
	</div>

	<!-- /***************************************************alert div**********************************************************/ -->












	<input type="button" value="Sync data" class="divbtn"
		onclick="synData();" />
</body>
</html>