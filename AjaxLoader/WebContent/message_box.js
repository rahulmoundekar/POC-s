	function msg_box(message,msgBox_type,callback)
	{
		
		var Box_id=null,lbl_id1=null,lbl_id2=null,btn_id=null;
		
		switch(msgBox_type)
		{
			case 'A':
			case 'a':
				Box_id='alert_box';
				lbl_id1='alert_box_lbl1';
				lbl_id2='alert_box_lbl2';
				btn_id='ok_btn';
				break;
			case 'C':
			case 'c':	
				Box_id='confirm_box';
				lbl_id1='confirm_box_lbl1';
				lbl_id2='confirm_box_lbl2';
				btn_id='yes_btn';
				break;
			case 'P':
			case 'p':	
				Box_id='prompt_box';
				lbl_id1='prompt_box_lbl';
				btn_id='prompt_ok_btn';
				
				break;
		}
		$("#"+lbl_id1).text("");
		if(lbl_id2!=null)
		{
			$("#"+lbl_id2).text("");
		}	
		
		if(message.indexOf('\n')!=-1)
		{	
			var index=message.indexOf('\n');
			var msg1=message.substring(0,index);
			var msg2=message.substring(index+1,message.length);
			
			$('#'+lbl_id1).text(msg1);
			
			if(msgBox_type!='p' && msgBox_type!='P')
			{	
				$('#'+lbl_id2).text(msg2);
			}	
		}
		else
		{
			$('#'+lbl_id1).text(message);
		}	
		$('#'+Box_id).reveal({ 
			 animation: 'fade',                   
			animationspeed: 1,                      
			closeonbackgroundclick: false,             
			dismissmodalclass: 'close'   
		});
		
		document.getElementById(btn_id).focus();
		document.getElementById('prompt_txtBox').select();
		document.getElementById('prompt_txtBox').focus();
		
		$("#ok_btn").bind('click').click(function(){
			$("#yes_btn").unbind("click");
			$("#no_btn").unbind("click");
			$("#ok_btn").unbind("click");
			$("#prompt_ok_btn").unbind("click");
			
			callback('ok');
		});
		
		$("#yes_btn").bind('click').click(function(){
			$("#yes_btn").unbind("click");
			$("#no_btn").unbind("click");
			$("#ok_btn").unbind("click");
			$("#prompt_ok_btn").unbind("click");
			callback('yes');
		});
		
		$("#no_btn").bind('click').click(function(){
			$("#yes_btn").unbind("click");
			$("#no_btn").unbind("click");
			$("#ok_btn").unbind("click");
			$("#prompt_ok_btn").unbind("click");
			callback('no');
		});
		
		$("#prompt_ok_btn").bind('click').click(function(){
			$("#yes_btn").unbind("click");
			$("#no_btn").unbind("click");
			$("#ok_btn").unbind("click");
			$("#prompt_ok_btn").unbind("click");
			
			callback($("#prompt_txtBox").val());
		});
	}
	
	function ok_on_enter(event)
	{
		if(event.keyCode==13)
		{
				$("#prompt_ok_btn").click();
			
		}	
	}